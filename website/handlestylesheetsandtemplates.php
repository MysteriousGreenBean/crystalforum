<?php
define("IN_MYBB", 1);
require_once "./global.php";
require_once MYBB_ROOT."admin/inc/functions_themes.php";

function update_template($sid, $updatedfilename) {
    global $db;
    // transform to docker path
    $pattern = '/.*\/templates\//';
    preg_match($pattern, $updatedfilename, $matches);
    $updatedfilename = str_replace($matches[0], "/var/templates/", $updatedfilename);
    if (is_file($updatedfilename)) {
            // read contents of $updatedfilename
    $updatedfile = file_get_contents($updatedfilename);
    // read filename without extension from $updatedfilename
    $filename = pathinfo($updatedfilename, PATHINFO_FILENAME);
    // find template with title $filename
    echo "Template title: ".$filename." | SID: ".$sid."\n";
    $query = $db->simple_select("templates", "tid, template", "title = '".$db->escape_string($filename) . "' AND sid = ". $sid);

    // if template exists
    if ($template = $db->fetch_array($query)) {
        // update template with $updatedfile
        $updated_template = array(
            "template" => $db->escape_string($updatedfile),
            "dateline" => TIME_NOW
        );
        $db->update_query("templates", $updated_template, "tid=".$template['tid']);
    } else {
        // insert new template with title $filename and $updatedfile
        $new_template = array(
            "title" => $db->escape_string($filename),
            "template" => $db->escape_string($updatedfile),
            "sid" => -2,
            "dateline" => TIME_NOW
        );
        $db->insert_query("templates", $new_template);
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
            echo "Stylesheet cache for theme ID ". $theme['tid'] . " and with filename ".$stylesheet['cachefile']." has been updated\n";
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
        echo "Stylesheet cache for theme ID ". $themeid . " and with filename ".$cachefile." has been updated\n";
    } else {
        echo "No stylesheet found for theme ID ". $themeid . " and with filename\n";
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

if (isset($_GET['action']) && isset($_GET['updatedfilepath']) && isset($_GET['oldfilepath'])){
    $action = $_GET['action'];
    $updatedFilePath = str_replace("\\", "/", $_GET['updatedfilepath']);
    $oldFilePath = str_replace("\\", "/", $_GET['oldfilepath']);

    // check if updatedFilePath contains string \templates\
    if (strpos($updatedFilePath, "/templates/") !== false && $action == "Changed") {     
        handle_template_updated($updatedFilePath);
    }

    echo "Action: ".$action." | Updated file path: ".$updatedFilePath." | Old file name: ".$oldFilePath." | ";
}
?>