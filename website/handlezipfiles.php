<?php

if (isset($_GET['unzip']) && isset($_GET['target'])) {
    // Get the directory of the current file
    $currentDir = __DIR__;

    // Resolve paths relative to the current script's directory
    $zipFile = realpath($currentDir . DIRECTORY_SEPARATOR . $_GET['unzip']);
    $targetDir = $currentDir . DIRECTORY_SEPARATOR . $_GET['target'];

    echo "Current directory: $currentDir<br>";
    echo "Zip file: $zipFile<br>";
    echo "Target directory: $targetDir<br>";

    // Validate paths
    if (!$zipFile || !file_exists($zipFile)) {
        die("Error: Zip file does not exist.<br>");
    }

    if (!is_dir($targetDir)) {
        // Attempt to create the target directory if it doesn't exist
        if (!mkdir($targetDir, 0755, true)) {
            die("Error: Failed to create target directory.<br>");
        }
    }

    // Attempt to unzip the file
    $zip = new ZipArchive;
    $res = $zip->open($zipFile);
    if ($res === TRUE) {
        $zip->extractTo($targetDir);
        $zip->close();
        echo 'Unzip successful';
    } else {
        echo 'Unzip failed';
    }
} else {
    echo "Missing parameters.";
}

?>