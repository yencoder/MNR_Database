<?php
if (isset($_POST['export_completed'])) {
    $status = 'Completed';
} elseif (isset($_POST['export_pending'])) {
    $status = 'Active';
} else {
    die("No status specified.");
}

$query = isset($_POST['query']) ? $_POST['query'] : '';

if (empty($query)) {
    die("No query specified.");
}

$table_name = isset($_POST['table_name']) ? $_POST['table_name'] : '';

// Connect to the database
include '../includes/library.php';
$pdo = connectDB();

// Execute the query
$stmt = $pdo->prepare($query);
$stmt->execute();
$data = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Create and send CSV file
header('Content-Type: text/csv');
header('Content-Disposition: attachment;filename="' . $table_name . '_' . $status . '.csv"');
header('Cache-Control: no-cache, no-store, must-revalidate');
header('Pragma: no-cache');
header('Expires: 0');

// Open output stream
$out = fopen('php://output', 'w');

// Write column names
fputcsv($out, array_keys($data[0]));

// Write data
foreach ($data as $row) {
    fputcsv($out, $row);
}

// Close output stream
fclose($out);
exit;
?>
