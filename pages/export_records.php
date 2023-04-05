<?php
header('Content-Type: text/csv; charset=utf-8');
header('Content-Disposition: attachment; filename=data.csv');

// Connect to the database
include '../includes/library.php';
$pdo = connectDB();

// Get the table_name and query from the form submission
$table_name = $_POST['table_name'] ?? 'records';
$query = $_POST['query'] ?? '';


// Prepare and execute the query
$stmt = $pdo->prepare($query);
$stmt->execute();

// Fetch the results and column names
$results = $stmt->fetchAll(PDO::FETCH_ASSOC);
$columnNames = !empty($results) ? array_keys($results[0]) : [];

// Open the output stream
$output = fopen('php://output', 'w');

// Output the column names
fputcsv($output, $columnNames);

// Output the result data
foreach ($results as $row) {
    fputcsv($output, $row);
}

// Close the output stream
fclose($output);
exit;
?>