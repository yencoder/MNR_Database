<?php
header('Content-Type: text/csv; charset=utf-8');
header('Content-Disposition: attachment; filename=data.csv');

$output = fopen('php://output', 'w');

// Get the table_name and current_year from the submitted form
$table_name = isset($_POST['table_name']) ? $_POST['table_name'] : '';
$currentYear = isset($_POST['current_year']) ? $_POST['current_year'] : '';
$currentMonth = isset($_POST['current_month']) ? $_POST['current_month'] : '';

include '../includes/library.php';
$pdo = connectDB();

if (!empty($table_name) && !empty($currentYear)) {
    $query = "SELECT * FROM plans2 WHERE YEAR(`EA Approved On`) = :currentYear" . ($currentMonth ? " AND MONTH(`EA Approved On`) = :currentMonth" : '');
    $stmt = $pdo->prepare($query);

    $stmt->bindParam(':currentYear', $currentYear, PDO::PARAM_INT);
    if ($currentMonth) {
        $stmt->bindParam(':currentMonth', $currentMonth, PDO::PARAM_INT);
    }

    $stmt->execute();
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

    if (!empty($result)) {
        // output the column headings
        fputcsv($output, array_keys($result[0]));

        // loop over the rows, outputting them
        foreach($result as $row) {
            fputcsv($output, $row);
            }
            } else {
            fputcsv($output, ['No data found']);
            }
            } else {
            fputcsv($output, ['Invalid table name or year']);
            }
            
            fclose($output);
            ?>
