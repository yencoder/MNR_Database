<?php
// create array for errors
$errors = array();
// get and sanitize each input
$rNumber = trim(filter_var($_POST['rNumber'] ?? null, FILTER_SANITIZE_STRING));
$landlordName = trim(filter_var($_POST['landlordNames'] ?? null, FILTER_SANITIZE_STRING));
// connect to database
include '../includes/library.php';
$pdo = connectDB();
// Initialize $query2 variable
$query2 = "";

// post submission
if (isset($_POST['rNumber'])) {
    $rNumber = $_POST['rNumber'];
    $query = "SELECT * FROM appeal_parcels2 WHERE program = 'MFTIP-Managed Forest Tax Incentive Program' AND ARN='" . $rNumber . "' AND Status='Active'";
    $query2 = "SELECT * FROM appeal_parcels2 WHERE program = 'MFTIP-Managed Forest Tax Incentive Program' AND ARN='" . $rNumber . "' AND Status='Completed'";
} else if (isset($_POST['landlordName'])) {
    $landlordName = $_POST['landlordName'];
    $query = "SELECT * FROM appeal_parcels2 WHERE program = 'MFTIP-Managed Forest Tax Incentive Program' AND Owner='" . $landlordName . "' AND Status='Active'";
    $query2 = "SELECT * FROM appeal_parcels2 WHERE program = 'MFTIP-Managed Forest Tax Incentive Program' AND Owner='" . $landlordName . "' AND Status='Completed'";
} else {
    // query for default view from pendingrfr table
    $query = "select * from appeal_parcels2 where program = 'MFTIP-Managed Forest Tax Incentive Program' AND Status='Active' ";
    $query2 = "select * from appeal_parcels2 where program = 'MFTIP-Managed Forest Tax Incentive Program' AND Status='Completed' ";
}

// query for results
$stmt = $pdo->prepare($query);
$stmt->execute();

// check if there are any rows returned by the query
$hasPendingEntries = $stmt->rowCount() > 0;
$pendingRow = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Perform a separate query for the completedrfr table
if (!empty($query2)) {
    $queryCompleted = str_replace('appeal_parcels2', 'appeal_parcels2', $query2);
    $stmtCompleted = $pdo->prepare($queryCompleted);
    $stmtCompleted->execute();

    // check if there are any rows returned by the completedrfr query
    $hasCompletedEntries = $stmtCompleted->rowCount() > 0;
    $completedRow = $stmtCompleted->fetchAll(PDO::FETCH_ASSOC);
} else {
    $hasCompletedEntries = false;
}


// // Perform a separate query for the completedrfr table
// $queryCompleted = str_replace('appeal_parcels2', 'appeal_parcels2', $query2); // Edited
// $stmtCompleted = $pdo->prepare($queryCompleted); // Edited
// $stmtCompleted->execute(); // Edited

// // check if there are any rows returned by the completedrfr query
// $hasCompletedEntries = $stmtCompleted->rowCount() > 0; // Edited
// $completedRow = $stmtCompleted->fetchAll(PDO::FETCH_ASSOC); // Edited

// get all the column names
$columnNames = !empty($pendingRow) ? array_keys($pendingRow[0]) : []; // Edited
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <?php $page_title = "Managed Forest Tax Incentive Program Program Search"; ?>
    <?php include "../includes/metadata.php" ?>
    <link rel="stylesheet" href="styles/master.css" />
</head>

<body>
    <?php include '../includes/header.php'; ?>
    <section class="section-box">
    <h1 class="section-title">Find a Managed Forest Tax Incentive Program application:</h1>

    </section>
    <section class="section-box">
    
        <h1 class="section-title">Search</h1>
        <form class="search_form" method="POST">
            ARN: <input type="text" name="rNumber" />
            <input type="submit" value="search" />
        </form>
        <p>15-digits roll number</p>
    </section>

    <section class="section-box">
    
        <h1 class="section-title">Find a landowner:</h1>
        <form class="search_form" method="POST">
            NAME: <input type="text" name="landlordName" />
            <input type="submit" value="search" />
        </form>
    </section>


    <section class="section-box">
        <h1 class="section-title">Pending Requests for Reconsideration:</h1>
        <?php
    if (!$hasPendingEntries) {
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
                    <?php // get all the row data
                    foreach ($pendingRow as $rowData): ?>
                        <tr>
                            <?php foreach ($rowData as $item): ?>
                                <td scope="row">
                                    <?= $item ?>
                                </td>
                            <?php endforeach ?>
                        </tr>
                    <?php endforeach ?>
                </tbody>
            </table>
            <form id="pending_export_form" method="post" action="exportRough.php">
    <input type="hidden" name="table_name" value="appeal_parcels2" />
    <input type="hidden" name="query" value="<?= htmlentities($query) ?>" />
    <button type="submit" name="export_pending">Export Pending Requests as CSV</button>
</form>



        </div>
        <?php } ?>
    </section>

    <section class="section-box">
        <h1 class="section-title">Completed Requests for Reconsideration:</h1>
        <?php
    if (!$hasCompletedEntries) {
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
                    <?php // get all the row data
                    foreach ($completedRow as $rowData): ?>
                        <tr>
                            <?php foreach ($rowData as $item): ?>
                                <td scope="row">
                                    <?= $item ?>
                                </td>
                            <?php endforeach ?>
                        </tr>
                    <?php endforeach ?>
                </tbody>
            </table>
            <form id="completed_export_form" method="post" action="exportRough.php">
    <input type="hidden" name="table_name" value="appeal_parcels2" />
    <input type="hidden" name="query" value="<?= htmlentities($queryCompleted) ?>" />
    <button type="submit" name="export_completed">Export Completed Requests as CSV</button>
</form>
        </div>
        <?php } ?>
    </section>

    <?php include "../includes/footer.php" ?>
    <script>
    let searchParams = new URLSearchParams();

    function updateExportForms() {
    const searchForms = document.getElementsByClassName('search_form');
    const pendingExportForm = document.getElementById('pending_export_form');
    const completedExportForm = document.getElementById('completed_export_form');

    searchParams = new URLSearchParams([...new FormData(searchForms[0]), ...new FormData(searchForms[1])]);

    pendingExportForm.action = 'exportRough.php?' + searchParams.toString() + '&table_name=appeal_parcels2&status=Active';
    completedExportForm.action = 'exportRough.php?' + searchParams.toString() + '&table_name=appeal_parcels2&status=Completed';
}

function onFormSubmit(e) {
    e.preventDefault();
    updateExportForms();
    e.target.submit();
}

// Update export form action URLs with default table_name parameters
updateExportForms();

document.getElementsByClassName('search_form')[0].addEventListener('submit', onFormSubmit);
document.getElementsByClassName('search_form')[1].addEventListener('submit', onFormSubmit);

</script>

</html>

