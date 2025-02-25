<?php
define("IN_MYBB", 1);
require_once "./global.php";
require_once MYBB_ROOT."admin/inc/functions_themes.php";

global $endline;
$endline = "<br>";
if (isset($_GET['fromconsole']) && $_GET['fromconsole'] == "true") {
    $endline = "\n";
}

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
    global $endline;

    // transform to docker path
    $pattern = '/.*\/stylesheets\//';
    preg_match($pattern, $updatedFilename, $matches);
    $updatedFilename = str_replace($matches[0], "/stylesheets/", $updatedFilename);

    echo "Updated file path: ".$updatedFilename." and tid: $tid".$endline;

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
    global $endline;

    $themesQuery = $db->simple_select("themes", "tid");
    while ($theme = $db->fetch_array($themesQuery)) { 
        $stylesheetsQuery = $db->simple_select("themestylesheets", "stylesheet,cachefile", "tid = ". $theme['tid']);
        while ($stylesheet = $db->fetch_array($stylesheetsQuery)) {
            echo "Cache refreshed for: ". cache_stylesheet($theme['tid'], $stylesheet['cachefile'], $stylesheet['stylesheet'])."".$endline;
            echo "Stylesheet cache for theme ID ". $theme['tid'] . " and with fileName ".$stylesheet['cachefile']." has been updated".$endline;
        }
    }

    echo "All theme stylesheet caches have been rebuilt.".$endline;
}

function rebuild_stylesheet_cache_for_specific_theme($themeid, $cachefile) {
    global $db;
    global $endline;

    $stylesheetsQuery = $db->simple_select("themestylesheets", "stylesheet", "tid = ". $themeid ." AND cachefile = '". $cachefile ."'");
    $stylesheet = $db->fetch_array($stylesheetsQuery);
    if ($stylesheet) {
        echo "Cache refreshed for: ". cache_stylesheet($themeid, $cachefile, $stylesheet['stylesheet'])."".$endline;
        echo "Stylesheet cache for theme ID ". $themeid . " and with fileName ".$cachefile." has been updated".$endline;
    } else {
        echo "No stylesheet found for theme ID ". $themeid . " and with fileName".$endline;
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

function rebuild_stylesheets_in_directory($directory, $tid) {
    global $db;
    global $endline;

    echo "Rebuilding stylesheets in directory: $directory with tid: $tid".$endline;
    $files = array_diff(scandir($directory), array(".", ".."));
    $jsonFile = null;

    foreach ($files as $file) {
        if (preg_match('/^_.*\.json$/', $file)) {
            $jsonFile = $file;
            break;
        }
    }

    if ($jsonFile) {
        echo "Found JSON file: $jsonFile".$endline;
    } else {
        echo "No JSON file found in directory: $directory".$endline;
        return;
    }

    $jsonFilePath = $directory . "/" . $jsonFile;
    $jsonContents = file_get_contents($jsonFilePath);
    $stylesheetsData = json_decode($jsonContents, true);

    if (json_last_error() !== JSON_ERROR_NONE) {
        error('Invalid JSON in the stylesheet theme'.$tid.' folder.');
    }

    $stylsheetfiles = array_diff(scandir($directory), array(".", "..", $jsonFile));
    $stylesheetInserts = array();

    foreach ($stylsheetfiles as $stylesheetFile) {
        $stylesheetFilePath = $directory."/".$stylesheetFile;
        if (is_file($stylesheetFilePath)) {
            $stylesheetInserts[] = array(
                'name' => $stylesheetFile,
                'tid' => $tid,
                'attachedto' => gather_attached_to($stylesheetsData, $stylesheetFile),
                'stylesheet' => $db->escape_string(file_get_contents($stylesheetFilePath)),
                'cachefile' => $stylesheetFile,
                'lastmodified' => TIME_NOW,
            );
        }
    }

    $db->insert_query_multiple("themestylesheets", $stylesheetInserts);
}

function gather_attached_to($stylesheetsData, $fileName) {
    global $endline;

    if (entry_contains_file($stylesheetsData["global"], $fileName)) {
        echo "$fileName is global".$endline;
        return "";
    }

    $attachedTo = "";
    foreach ($stylesheetsData as $key => $value) {
        if (entry_contains_file($value, $fileName)) {
            echo "$fileName is attached to $key".$endline;
            $attachedTo .= $key . "|";
        }
    }

    return $attachedTo;
}

function entry_contains_file($stylesheetEntry, $fileName) {
    $entries = $stylesheetEntry["global"];
    foreach ($entries as $entry) {
        if (substr($entry, -strlen($fileName)) === $fileName) {
            return true;
        }
    }
    return false;
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

function get_tid_from_directory($directory) {
    $pattern = '/(\d+)/';
    preg_match($pattern, $directory, $matches);
    return $matches[1];
}

function rebuild_all_templates() {
    $templatesDirectory = __DIR__."/templates/";
    $directories = array_diff(scandir($templatesDirectory), array(".", ".."));
    foreach ($directories as $directory) {
       rebuild_templates_in_directory($templatesDirectory.$directory, get_tid_from_directory($directory));
    }
}

function rebuild_all_stylesheets() {
    $stylesheetsDirectory = __DIR__."/stylesheets/";
    $directories = array_diff(scandir($stylesheetsDirectory), array(".", ".."));
    foreach ($directories as $directory) {
        rebuild_stylesheets_in_directory($stylesheetsDirectory.$directory, get_tid_from_directory($directory));
    }
    
    rebuild_stylesheets_cache_for_all_themes();
}

function deleteDirectory($dir) {
    // Check if the directory exists
    if (!is_dir($dir)) {
        echo "The directory does not exist: $dir".$endline;
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
        $db->delete_query("themestylesheets", "1=1");
        $db->write_query("ALTER TABLE mybb_themestylesheets AUTO_INCREMENT = 1");
        rebuild_all_stylesheets();
    }
}

if (isset($_GET['rebuild']) && $_GET['rebuild'] == "templates") {
    global $db;
    $query = $db->simple_select("templates", "tid", "1=1", array('limit' => 1));
    $forceRebuild = isset($_GET['force']) && $_GET['force'] == "true";
    if ($forceRebuild) {
        echo "Force rebuild templates $endline";
        $db->delete_query("templates", "1=1");
        $db->write_query("ALTER TABLE mybb_templates AUTO_INCREMENT = 1");
        echo "Cleared templates table, rebuilding templates".$endline;
        rebuild_all_templates();
    } else {
        if ($db->fetch_array($query)) {
            echo "Templates already exist in the database, rebuild unnecessary".$endline;
        } else {
            echo "Templates do not exist in the database, rebuilding".$endline;
            rebuild_all_templates();
        }
    }
}

if (isset($_GET['cleanup']) && $_GET['cleanup'] == "true") {
    deleteDirectory(__DIR__."/templates");
    echo "Deleted templates directory".$endline;
    deleteDirectory(__DIR__."/stylesheets");
    echo "Deleted stylesheets directory".$endline;
}
?>