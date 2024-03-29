<?php
$currentYear = date('Y');
$currentMonth = date('m');

// connect to database
include '../includes/library.php';
$pdo = connectDB();

// query for results of the current year
$queryYear = "SELECT * FROM plans WHERE YEAR(`EA Approved On`) = '$currentYear'";
$stmtYear = $pdo->prepare($queryYear);
$stmtYear->execute();

// query for results of the current month
$queryMonth = "SELECT * FROM plans WHERE YEAR(`EA Approved On`) = '$currentYear' AND MONTH(`EA Approved On`) = '$currentMonth'";
$stmtMonth = $pdo->prepare($queryMonth);
$stmtMonth->execute();

// check if there are any rows returned by the queries
$hasEntriesYear = $stmtYear->rowCount() > 0;
$rowDataYear = $stmtYear->fetchAll(PDO::FETCH_ASSOC);

$hasEntriesMonth = $stmtMonth->rowCount() > 0;
$rowDataMonth = $stmtMonth->fetchAll(PDO::FETCH_ASSOC);

// get all the column names
$columnNames = !empty($rowDataYear) ? array_keys($rowDataYear[0]) : [];

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <?php $page_title = "Sample Table Display"; ?>
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
    <h1 class="section-title">List from the Current Year to Send to MPAC</h1>
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

<form id="export_form_year" method="post" action="export_to_csv.php">
    <input type="hidden" name="table_name" value="sample_table" />
    <input type="hidden" name="current_year" value="<?= $currentYear ?>" />
    <button type="submit" class="export-btn">Export to send to MPAC</button>
</form>

        </div>
    <?php } ?>
</section>

<section class="section-box">
    <h1 class="section-title">List from the Current Month to Send to MPAC</h1>
    <?php
    if (!$hasEntriesMonth) {
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
                    foreach ($rowDataMonth as $row): ?>
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
                <form id="export_form_month" method="post" action="export_to_csv.php">
                <input type="hidden" name="table_name" value="sample_table" />
                <input type="hidden" name="current_year" value="<?= $currentYear ?>" />
                <input type="hidden" name="current_month" value="<?= $currentMonth ?>" />
                <button type="submit" class="export-btn">Export to send to MPAC</button>
            </form>
        </div>
    <?php } ?>
</section>

<?php include "../includes/footer.php" ?>
</body>
</html>