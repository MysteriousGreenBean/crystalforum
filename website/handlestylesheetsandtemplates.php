<?php
define("IN_MYBB", 1);
require_once "./global.php";
require_once MYBB_ROOT."admin/inc/functions_themes.php";


function update_template($sid, $updatedFilename) {
    global $db;
    // transform to docker path
    $pattern = '/.*\/templates\//';
    preg_match($pattern, $updatedFilename, $matches);
    $updatedFilename = str_replace($matches[0], "/var/templates/", $updatedFilename);

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
        // else {
        //     // insert new template with title $fileName and $updatedFile
        //     $new_template = array(
        //         "title" => $db->escape_string($fileName),
        //         "template" => $db->escape_string($updatedFile),
        //         "sid" => -2,
        //         "dateline" => TIME_NOW
        //     );
        //     $db->insert_query("templates", $new_template);
        // }
    }
}

function update_stylesheet($tid, $updatedFilename) {
    global $db;
    // transform to docker path
    $pattern = '/.*\/stylesheets\//';
    preg_match($pattern, $updatedFilename, $matches);
    $updatedFilename = str_replace($matches[0], "/var/stylesheets/", $updatedFilename);

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

function handle_template_updated($updatedFilePath) {
    if (strpos($updatedFilePath, "/templates/master_templates") !== false) {
        update_template(-2, $updatedFilePath);
    }
    else if (strpos($updatedFilePath, "/templates/global_templates") !== false) {
        update_template(-1, $updatedFilePath);
    }
    else {
        $pattern = '/\/templates\/(\d+)/';
        preg_match($pattern, $updatedFilePath, $matches);
        $sid = $matches[1];
        update_template($sid, $updatedFilePath);
    }
}

function handle_stylesheet_updated($updatedFilePath) {
    $pattern = '/\/stylesheets\/theme(\d+)/';
    preg_match($pattern, $updatedFilePath, $matches);
    $themeid = $matches[1];
    update_stylesheet($themeid, $updatedFilePath);
}

if (isset($_GET['action']) && isset($_GET['updatedfilepath']) && isset($_GET['oldfilepath'])) {
    $action = $_GET['action'];
    $updatedFilePath = str_replace("\\", "/", $_GET['updatedfilepath']);
    $oldFilePath = str_replace("\\", "/", $_GET['oldfilepath']);

    // check if updatedFilePath contains string \templates\
    if (strpos($updatedFilePath, "/templates/") !== false && $action == "Changed") {     
        handle_template_updated($updatedFilePath);
    } else if (strpos($updatedFilePath, "/stylesheets/") !== false && $action == "Changed") {
        handle_stylesheet_updated($updatedFilePath);
    }

    echo "Action: ".$action." | Updated file path: ".$updatedFilePath." | Old file name: ".$oldFilePath." | ";
}

if (isset($_GET['rebuild']) && $_GET['rebuild'] == "stylesheets") {
    if (isset($_GET['themeid']) && isset($_GET['cachefile'])) {
        rebuild_stylesheet_cache_for_specific_theme($_GET['themeid'], $_GET['cachefile']);
    } else {
        rebuild_stylesheets_cache_for_all_themes();
    }
}
?>