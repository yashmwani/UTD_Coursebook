<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['sqlContent'])) {
    $sqlContent = $_POST['sqlContent'];
    $fileName = 'task1.sql';
    $filePath = __DIR__ . '/' . $fileName; // Saves in the same directory

    // Save file
    if (file_put_contents($filePath, $sqlContent)) {
        echo json_encode(["status" => "success", "message" => "SQL file saved.", "filePath" => $fileName]);
    } else {
        echo json_encode(["status" => "error", "message" => "Failed to save SQL file"]);
    }
} else {
    echo json_encode(["status" => "error", "message" => "Invalid request"]);
}
?>
