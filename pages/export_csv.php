<?php
// Check if table_name is set
if (!isset($_POST['table_name'])) {
    die("No table specified.");
}


// Get the table name
$table_name = $_POST['table_name'];

// Connect to the database
include '../includes/library.php';
$pdo = connectDB();

// Fetch data from the specified table
$query = "SELECT * FROM " . $table_name;
$stmt = $pdo->prepare($query);
$stmt->execute();
$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Create and send CSV file
header('Content-Type: text/csv');
header('Content-Disposition: attachment;filename="' . $table_name . '.csv"');
header('Cache-Control: no-cache, no-store, must-revalidate');
header('Pragma: no-cache');
header('Expires: 0');

// Open output stream
$out = fopen('php://output', 'w');

// Write column names
fputcsv($out, array_keys($rows[0]));

// Write data
foreach ($rows as $row) {
    fputcsv($out, $row);
}

// Close output stream
fclose($out);
exit;
?>
