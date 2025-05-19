<?php
define("IN_MYBB", 1);


require_once "./inc/init.php";
$settingsBackup = $settings;
$settings['showthemeselect'] = "0";
require_once "./global.php";
require_once MYBB_ROOT."admin/inc/functions_themes.php";

global $isForDev;
$isForDev = isset($_GET['dev']) && $_GET['dev'] == "true";

global $endline;
$endline = "<br>";
if (isset($_GET['fromconsole']) && $_GET['fromconsole'] == "true") {
    $endline = "\n";
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

function get_template_name_from_directory($templatesDirectory) {
    $templateName = basename($templatesDirectory);
    $templateName = preg_replace('/^\d+/', '', $templateName);
    $templateName = str_replace(array("_", "-"), " ", $templateName);
    return ucwords($templateName);
}

function rebuild_templates_in_directory($directory, $sid) {
    global $db;
    global $isForDev;

    if (!$isForDev) {
        $templateCategories = array_diff(scandir($directory), array(".", ".."));
        foreach ($templateCategories as $templateCategory) {
            rebuild_templates_in_category($directory."/".$templateCategory, $sid);
        }
    }

    if ($sid != -1 && $sid != -2) {
        $templateSetName = get_template_name_from_directory($directory);
        $db->insert_query("templatesets", array(
            'sid' => $sid,
            'title' => $templateSetName
        ));
    }
}

function read_json_file($filePath) {
    global $endline;
    if (!file_exists($filePath)) {
        echo "File does not exist: $filePath".$endline;
        return null;
    }

    $jsonContents = file_get_contents($filePath);
    $jsonData = json_decode($jsonContents, true);
    if (json_last_error() !== JSON_ERROR_NONE) {
        error('Invalid JSON in .'.$filePath);
    }
    return $jsonData;
}

function get_theme_id($propertiesData) {
    if (isset($propertiesData["themeId"])) {
        return $propertiesData["themeId"];
    } else {
        return -100;
    }
}


function rebuild_stylesheets_in_directory($directory) {
    global $db;
    global $endline;
    global $isForDev;
    
    echo "Rebuilding stylesheets in directory: $directory".$endline;

    $propertiesData = read_json_file($directory . "/" . '_properties.json');
    $tid = get_theme_id($propertiesData);
    if ($tid == -100) {
        echo "No theme ID found in _properties.json, skipping directory: $directory".$endline;
        return;
    }
    echo "Theme ID: $tid".$endline;

    $stylesheetsData = read_json_file($directory . "/" . '_stylesheets.json');

    if (!$isForDev) {    
        $stylsheetfiles = array_diff(scandir($directory), array(".", "..", '_stylesheets.json', '_properties.json'));
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
    }

    $db->insert_query_multiple("themestylesheets", $stylesheetInserts);

    $db->insert_query("themes", array(
        'tid' => $tid,
        'name' => $propertiesData["name"],
        'pid' => $propertiesData["parentId"],
        'def' => $propertiesData["isDefault"],
        'properties' => my_serialize($propertiesData),
        'stylesheets' => my_serialize($stylesheetsData),
        'allowedgroups' => "all",
    ));
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

function get_template_id_from_directory($directory) {
    if ($directory == 'global_templates')
        return -1;
    if ($directory == 'master_templates')
        return -2;

    $pattern = '/(\d+)/';
    preg_match($pattern, $directory, $matches);
    return $matches[1];
}

function rebuild_all_templates() {
    global $endline;

    $templatesDirectory = __DIR__."/templates/";
    $directories = array_diff(scandir($templatesDirectory), array(".", ".."));
    foreach ($directories as $directory) {
        $fullPath = $templatesDirectory.$directory;
        if (!is_dir($fullPath)) {
            echo "Skipping non-directory: $directory".$endline;
            continue;
        }
       rebuild_templates_in_directory($fullPath, get_template_id_from_directory($directory));
    }
}

function rebuild_all_stylesheets() {
    global $isForDev;

    $stylesheetsDirectory = __DIR__."/stylesheets/";
    $directories = array_diff(scandir($stylesheetsDirectory), array(".", ".."));
    foreach ($directories as $directory) {
        rebuild_stylesheets_in_directory($stylesheetsDirectory.$directory);
    }
    
    if (!$isForDev)
        rebuild_stylesheets_cache_for_all_themes();
}

function deleteDirectory($dir) {
    global $endline;
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
        $db->delete_query("themes", "1=1");
        $db->write_query("ALTER TABLE mybb_themestylesheets AUTO_INCREMENT = 1");
        $db->write_query("ALTER TABLE mybb_themes AUTO_INCREMENT = 1");
        rebuild_all_stylesheets(isset($_GET['dev']) && $_GET['dev'] == "true");
        $cache->update_default_theme();
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
        $db->delete_query("templatesets", "1=1");
        $db->write_query("ALTER TABLE mybb_templatesets AUTO_INCREMENT = 1");
        echo "Cleared templates table, rebuilding templates...".$endline;
        rebuild_all_templates(isset($_GET['dev']) && $_GET['dev'] == "true");
        echo "Rebuilding templates finished successfully".$endline;
    } else {
        if ($db->fetch_array($query)) {
            echo "Templates already exist in the database, rebuild unnecessary".$endline;
        } else {
            echo "Templates do not exist in the database, rebuilding...".$endline;
            rebuild_all_templates();
            echo "Rebuilding templates finished successfully".$endline;
        }
    }
}

if (isset($_GET['cleanup']) && $_GET['cleanup'] == "true") {
    deleteDirectory(__DIR__."/templates");
    echo "Deleted templates directory".$endline;
    deleteDirectory(__DIR__."/stylesheets");
    echo "Deleted stylesheets directory".$endline;
}

$settings = $settingsBackup;
?>