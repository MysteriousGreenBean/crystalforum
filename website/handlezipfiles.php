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
        echo 'Unzip successful<br>';
    } else {
        echo 'Unzip failed<br>';
    }

    if ($_GET['target'] == 'current') {
        // Handle moving contents of the 'current' folder to the current directory
        $currentFolder = $currentDir . DIRECTORY_SEPARATOR . 'current' . DIRECTORY_SEPARATOR . basename($_GET['unzip'], '.zip');

        if (is_dir($currentFolder)) {
            // Open the 'current' folder and move its contents
            $files = array_diff(scandir($currentFolder), array('..', '.')); // Get all files/folders except . and ..

            foreach ($files as $file) {
                $sourcePath = $currentFolder . DIRECTORY_SEPARATOR . $file;
                $destPath = $currentDir . DIRECTORY_SEPARATOR . $file;

                if (is_dir($sourcePath)) {
                    // If it's a directory, use recursive move
                    rename($sourcePath, $destPath); // Move directory
                } else {
                    // If it's a file, move it
                    rename($sourcePath, $destPath); // Move file
                }
            }
            echo 'Contents of the "current" folder have been moved.<br>';
        } else {
            echo 'Error: "current" folder does not exist.<br>';
        }

        // Remove the 'current' folder
        rmdir($currentFolder);
    }
} else {
    echo "Missing parameters.";
}

?>