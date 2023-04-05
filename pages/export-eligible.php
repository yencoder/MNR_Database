<?php
header('Content-Type: text/csv; charset=utf-8');
header('Content-Disposition: attachment; filename=data.csv');

$output = fopen('php://output', 'w');

$program_name = isset($_POST['program_name']) ? $_POST['program_name'] : '';
$currentYear = isset($_POST['current_year']) ? $_POST['current_year'] : '';

include '../includes/library.php';
$pdo = connectDB();

if (!empty($program_name) && !empty($currentYear)) {
    $query = "SELECT EAU.*, $program_name.program_name
    FROM EligibleAreaUpdates EAU
    JOIN $program_name ON EAU.ARN = $program_name.ARN
    WHERE YEAR(EAU.updated_at) = :currentYear
    AND $program_name.program_name = :program_name";
    $stmt = $pdo->prepare($query);

    $stmt->bindParam(':currentYear', $currentYear, PDO::PARAM_INT);
    $stmt->bindParam(':program_name', $program_name, PDO::PARAM_STR);

    $stmt->execute();
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

    if (!empty($result)) {
        fputcsv($output, array_keys($result[0]));

        foreach($result as $row) {
            fputcsv($output, $row);
        }
    } else {
        fputcsv($output, ['No data found']);
    }
} else {
    fputcsv($output, ['Invalid program name or year']);
}

fclose($output);

?>
