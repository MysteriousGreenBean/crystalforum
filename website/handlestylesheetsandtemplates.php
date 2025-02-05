<?php
define("IN_MYBB", 1);
require_once "./global.php";
require_once MYBB_ROOT."admin/inc/functions_themes.php";


function update_template($sid, $updatedFilename) {
    global $db;
    // transform to docker path
    $pattern = '/.*\/templates\//';
    preg_match($pattern, $updatedFilename, $matches);
    $updatedFilename = str_replace($matches[0], "/templates/", $updatedFilename);

    if (is_file($updatedFilename)) {
        $updatedFile = file_get_contents($updatedFilename);
        $fileName = pathinfo($updatedFilename, PATHINFO_FILENAME);
        $query = $db->simple_select("templates", "tid, template", "title = '".$db->escape_string($fileName) . "' AND sid = ". $sid);

        if ($template = $db->fetch_array($query)) {
            $updated_template = array(
                "template" => $db->escape_string($updatedFile),
                "dateline" => TIME_NOW
            );
            $db->update_query("templates", $updated_template, "tid=".$template['tid']);
        } 
    }
}

function update_stylesheet($tid, $updatedFilename) {
    global $db;
    // transform to docker path
    $pattern = '/.*\/stylesheets\//';
    preg_match($pattern, $updatedFilename, $matches);
    $updatedFilename = str_replace($matches[0], "/stylesheets/", $updatedFilename);

    echo "Updated file path: ".$updatedFilename." and tid: $tid\n";

    if (is_file($updatedFilename)) {
        $updatedFile = file_get_contents($updatedFilename);
        $fileName = pathinfo($updatedFilename, PATHINFO_BASENAME);

        $query = $db->simple_select("themestylesheets", "sid, stylesheet", "cachefile = '".$db->escape_string($fileName) . "' AND tid = ". $tid);

        if ($stylesheet = $db->fetch_array($query)) {
            $updated_stylesheet = array(
                "stylesheet" => $db->escape_string($updatedFile),
                "lastmodified" => TIME_NOW
            );
            $db->update_query("themestylesheets", $updated_stylesheet, "sid=".$stylesheet['sid']);

            cache_stylesheet($tid, $fileName, $updatedFile);
        } 
    }
}

function rebuild_stylesheets_cache_for_all_themes() {
    global $db;

    $themesQuery = $db->simple_select("themes", "tid");
    while ($theme = $db->fetch_array($themesQuery)) { 
        $stylesheetsQuery = $db->simple_select("themestylesheets", "stylesheet,cachefile", "tid = ". $theme['tid']);
        while ($stylesheet = $db->fetch_array($stylesheetsQuery)) {
            echo "Cache refreshed for: ". cache_stylesheet($theme['tid'], $stylesheet['cachefile'], $stylesheet['stylesheet'])."\n";
            echo "Stylesheet cache for theme ID ". $theme['tid'] . " and with fileName ".$stylesheet['cachefile']." has been updated\n";
        }
    }

    echo "All theme stylesheet caches have been rebuilt.\n";
}

function rebuild_stylesheet_cache_for_specific_theme($themeid, $cachefile) {
    global $db;
    
    $stylesheetsQuery = $db->simple_select("themestylesheets", "stylesheet", "tid = ". $themeid ." AND cachefile = '". $cachefile ."'");
    $stylesheet = $db->fetch_array($stylesheetsQuery);
    if ($stylesheet) {
        echo "Cache refreshed for: ". cache_stylesheet($themeid, $cachefile, $stylesheet['stylesheet'])."\n";
        echo "Stylesheet cache for theme ID ". $themeid . " and with fileName ".$cachefile." has been updated\n";
    } else {
        echo "No stylesheet found for theme ID ". $themeid . " and with fileName\n";
    }
}

function rebuild_templates_in_category($category, $sid) {
    global $db;

    $templateFiles = array_diff(scandir($category), array(".", ".."));
    $templateInserts = array();
    foreach ($templateFiles as $templateFile) {
        $templateFilePath = $category."/".$templateFile;
        if (is_file($templateFilePath)) {
            $templateInserts[] = array(
                'title' => $db->escape_string(pathinfo($templateFilePath, PATHINFO_FILENAME)),
                'template' => $db->escape_string(file_get_contents($templateFilePath)),
                'sid' => $sid,
                'version' => '1838',
                'status' => '',
                'dateline' => TIME_NOW,
            );
        }
    }

    $db->insert_query_multiple("templates", $templateInserts);
}

function rebuild_templates_in_directory($directory, $sid) {
    $templateCategories = array_diff(scandir($directory), array(".", ".."));
    foreach ($templateCategories as $templateCategory) {
        rebuild_templates_in_category($directory."/".$templateCategory, $sid);
    }
}

function get_sid_from_directory($directory) {
    if ($directory == 'global_templates')
        return -1;
    if ($directory == 'master_templates')
        return -2;

    $pattern = '/(\d+)/';
    preg_match($pattern, $directory, $matches);
    return $matches[1];
}

function rebuild_all_templates() {
    $templatesDirectory = __DIR__."/templates/";
    $directories = array_diff(scandir($templatesDirectory), array(".", ".."));
    foreach ($directories as $directory) {
       rebuild_templates_in_directory($templatesDirectory.$directory, get_sid_from_directory($directory));
    }
}

function deleteDirectory($dir) {
    // Check if the directory exists
    if (!is_dir($dir)) {
        echo "The directory does not exist: $dir\n";
        return false;
    }

    // Get all files and directories, including subdirectories (deeply nested)
    $files = glob($dir . '/*');
    
    // Delete all files and directories
    array_map(function($file) {
        is_dir($file) ? deleteDirectory($file) : unlink($file);
    }, $files);

    // Remove the empty directory
    return rmdir($dir);
}


if (isset($_GET['rebuild']) && $_GET['rebuild'] == "stylesheets") {
    if (isset($_GET['themeid']) && isset($_GET['cachefile'])) {
        rebuild_stylesheet_cache_for_specific_theme($_GET['themeid'], $_GET['cachefile']);
    } else {
        rebuild_stylesheets_cache_for_all_themes();
    }
}

if (isset($_GET['rebuild']) && $_GET['rebuild'] == "templates") {
    global $db;
    $query = $db->simple_select("templates", "tid", "1=1", array('limit' => 1));
    $forceRebuild = isset($_GET['force']) && $_GET['force'] == "true";
    if ($forceRebuild) {
        echo "Force rebuild templates\n";
        $db->delete_query("templates", "1=1");
        $db->write_query("ALTER TABLE mybb_templates AUTO_INCREMENT = 1");
        echo "Cleared templates table, rebuilding templates\n";
        rebuild_all_templates();
    } else {
        if ($db->fetch_array($query)) {
            echo "Templates already exist in the database, rebuild unnecessary\n";
        } else {
            echo "Templates do not exist in the database, rebuilding\n";
            rebuild_all_templates();
        }
    }
}

if (isset($_GET['cleanup']) && $_GET['cleanup'] == "true") {
    deleteDirectory(__DIR__."/templates");
    echo "Deleted templates directory\n";
    deleteDirectory(__DIR__."/stylesheets");
    echo "Deleted stylesheets directory\n";
}
?>