<?php

if (isset($_GET['unzip']) && isset($_GET['target'])) {
    // Get the directory of the current file
    $currentDir = __DIR__;

    // Resolve paths relative to the current script's directory
    $zipFile = realpath($currentDir . DIRECTORY_SEPARATOR . $_GET['unzip']);
    $targetDir = $currentDir . DIRECTORY_SEPARATOR . $_GET['target'];

    echo "Current directory: $currentDir\n";
    echo "Zip file: $zipFile\n";
    echo "Target directory: $targetDir\n";

    // Validate paths
    if (!$zipFile || !file_exists($zipFile)) {
        die("Error: Zip file does not exist.\n");
    }

    if (!is_dir($targetDir)) {
        // Attempt to create the target directory if it doesn't exist
        if (!mkdir($targetDir, 0755, true)) {
            die("Error: Failed to create target directory.\n");
        }
    }

    // Attempt to unzip the file
    $zip = new ZipArchive;
    $res = $zip->open($zipFile);
    if ($res === TRUE) {
        $zip->extractTo($targetDir);
        $zip->close();
        echo 'Unzip successful\n';
    } else {
        echo 'Unzip failed\n';
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
                    // If it's a directory, merge its contents
                    mergeDirectories($sourcePath, $destPath);
                } else {
                    // If it's a file, move it (overwrite if necessary)
                    if (file_exists($destPath)) {
                        echo "File already exists: $destPath. Overwriting.\n";
                    }
                    rename($sourcePath, $destPath);
                }
            }
            echo 'Contents of the "current" folder have been merged and moved.\n';
        } else {
            echo 'Error: "current" folder does not exist.\n';
        }
        
        // Remove the 'current' folder
        rmdir($currentFolder);
        
        /**
         * Recursively merge source directory into destination directory.
         *
         * @param string $sourcePath The source directory.
         * @param string $destPath The destination directory.
         */
        function mergeDirectories($sourcePath, $destPath)
        {
            if (!is_dir($destPath)) {
                // Create the destination directory if it doesn't exist
                mkdir($destPath, 0755, true);
            }
        
            $items = array_diff(scandir($sourcePath), array('..', '.')); // Get all items except . and ..
        
            foreach ($items as $item) {
                $sourceItemPath = $sourcePath . DIRECTORY_SEPARATOR . $item;
                $destItemPath = $destPath . DIRECTORY_SEPARATOR . $item;
        
                if (is_dir($sourceItemPath)) {
                    // If it's a directory, recursively merge
                    mergeDirectories($sourceItemPath, $destItemPath);
                } else {
                    // If it's a file, move it (overwrite if necessary)
                    if (file_exists($destItemPath)) {
                        echo "File already exists: $destItemPath. Overwriting.\n";
                    }
                    rename($sourceItemPath, $destItemPath);
                }
            }
        
            // Remove the source directory after merging its contents
            rmdir($sourcePath);
        }
    }
} else {
    echo "Missing parameters.\n";
}

?>