<?php
$currentYear = date('Y');
$currentMonth = date('m');

// connect to database
include '../includes/library.php';
$pdo = connectDB();

// query for results of the current year
$queryYear = "SELECT EAU.*, MFTIP.program_name
              FROM EligibleAreaUpdates EAU
              JOIN MFTIP ON EAU.ARN = MFTIP.ARN
              WHERE YEAR(EAU.updated_at) = '$currentYear'
              AND MFTIP.program_name = 'MFTIP'";
$stmtYear = $pdo->prepare($queryYear);
$stmtYear->execute();
$stmtYear = $pdo->prepare($queryYear);
$stmtYear->execute();



// check if there are any rows returned by the queries
$hasEntriesYear = $stmtYear->rowCount() > 0;
$rowDataYear = $stmtYear->fetchAll(PDO::FETCH_ASSOC);



// get all the column names
$columnNames = !empty($rowDataYear) ? array_keys($rowDataYear[0]) : [];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <?php $page_title = "Annual eligible areas MFTIP"; ?>
    <?php include "../includes/metadata.php" ?>
    <link rel="stylesheet" href="styles/master.css" />
    <style>
        .export-btn {
    background-color: #008CBA;
    border: none;
    color: white;
    text-align: center;
    display: inline-block;
    font-size: 1rem;
    padding: 12px 24px;
    margin: 10px 2px;
    cursor: pointer;
    text-decoration: none;
    border-radius: 4px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    transition: all 0.3s ease;
}

.export-btn:hover {
    background-color: #007399;
    box-shadow: 0 6px 8px rgba(0, 0, 0, 0.15);
    transform: translateY(-2px);
}

    </style>
</head>
<body>
    <?php include '../includes/header.php'; ?>
    <section class="section-box">
    <h1 class="section-title">Annual eligible areas Managed Forest Tax Incentive Program</h1>
    <?php
    if (!$hasEntriesYear) {
        echo "<p>No entries found.</p>";
    } else {
    ?>
        <div class="results">
        <table class="resultsTable">
    <thead>
        <tr>
            <?php foreach ($columnNames as $column): ?>
                <th scope="col">
                    <?= $column ?>
                </th>
            <?php endforeach; ?>
        </tr>
    </thead>
    <tbody>
        <?php
        foreach ($rowDataYear as $row): ?>
            <tr>
                <?php foreach ($row as $item): ?>
                    <td scope="row">
                        <?= $item ?>
                    </td>
                <?php endforeach ?>
            </tr>
        <?php endforeach ?>
    </tbody>
</table>
<form id="export_form_year" method="post" action="export-eligible.php">
    <input type="hidden" name="program_name" value="MFTIP" />
    <input type="hidden" name="current_year" value="<?= $currentYear ?>" />
    <button type="submit" class="export-btn">Export as CSV</button>
</form>

        </div>
    <?php } ?>
</section>
<?php include "../includes/footer.php" ?>
</body>
</html>