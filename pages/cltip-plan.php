<?php
// create array for errors
$errors = array();
// get and sanitize each input
$rNumber = trim(filter_var($_POST['rNumber'] ?? null, FILTER_SANITIZE_STRING));
$landlordName = trim(filter_var($_POST['landlordNames'] ?? null, FILTER_SANITIZE_STRING));
// connect to database
// connect to database
include '../includes/library.php';
$pdo = connectDB();
// Initialize $query2 variable
$query2 = "";

// post submission
if (isset($_POST['rNumber'])) {
    $rNumber = $_POST['rNumber'];
    $query = "SELECT * FROM records WHERE program = 'CLTIP' AND ARN='" . $rNumber . "'";
} else if (isset($_POST['plan'])) {
    $plan = str_replace(' ', '', $_POST['plan']);
    $query = "SELECT * FROM records WHERE program = 'CLTIP' AND Plan='" . $plan . "'";
} else if (isset($_POST['landlordName'])) {
    $landlordName = $_POST['landlordName'];
    $query = "SELECT * FROM records WHERE program = 'CLTIP' AND (Owner LIKE '%" . $landlordName . "%' OR Owner LIKE '%" . $landlordName . "%')";
} else {
    // query for default view from records table
    $query = "SELECT * FROM records WHERE program = 'CLTIP'";
}
// query for results
$stmt = $pdo->prepare($query);
$stmt->execute();

// check if there are any rows returned by the query
$hasEntries = $stmt->rowCount() > 0;
$row = $stmt->fetchAll(PDO::FETCH_ASSOC);

// get all the column names
$columnNames = !empty($row) ? array_keys($row[0]) : [];
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <?php $page_title = "Conservation Land Tax Incentive Program Records Search"; ?>
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

        .search-btn {
            background-color: #4CAF50;
            border: none;
            color: white;
            text-align: center;
            display: inline-block;
            font-size: 1rem;
            padding: 8px 16px;
            margin: 10px 2px;
            cursor: pointer;
            text-decoration: none;
            border-radius: 4px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
        }

        .search-btn:hover {
            background-color: #3C8C41;
            box-shadow: 0 6px 8px rgba(0, 0, 0, 0.15);
            transform: translateY(-2px);
        }
    </style>
</head>

<body>
    <?php include '../includes/header.php'; ?>
    <section class="section-box">
        <h1 class="section-title">Find a Conservation Land Tax Incentive Program Plan:</h1>

    </section>
    <section class="section-box">
        <h1 class="section-title">Enter the Application Plan number:</h1>
        <form class="search_form" method="POST">
            Plan: <input type="text" name="plan" />
            <input type="submit" value="search" class="search-btn" />
        </form>
        <p>Plan number</p>
    </section>


    <section class="section-box">
        <h1 class="section-title">Search Results:</h1>
        <?php
        if (!$hasEntries) {
            echo "<p>No entries found.</p>";
        } else {
        ?>
            <div class="results">
                <table class="resultsTable">
                    <thead>
                        <tr>
                            <?php foreach ($columnNames as $column) : ?>
                                <th scope="col">
                                    <?= $column ?>
                                </th>
                            <?php endforeach; ?>
                        </tr>
                    </thead>
                    <tbody>
                        <?php // get all the row data
                        foreach ($row as $rowData) : ?>
                            <tr>
                                <?php foreach ($rowData as $item) : ?>
                                    <td scope="row">
                                        <?= $item ?>
                                    </td>
                                <?php endforeach ?>
                            </tr>
                        <?php endforeach ?>
                    </tbody>
                </table>
                <form id="export_form" method="post" action="export_records.php">
                    <input type="hidden" name="table_name" value="records" />
                    <input type="hidden" name="query" value="<?= htmlentities($query) ?>" />
                    <button type="submit" name="export" class="export-btn">Export Results as CSV</button>
                </form>
            </div>
        <?php } ?>
    </section>

    <?php include "../includes/footer.php" ?>
    <script>
        let searchParams = new URLSearchParams();

        function updateExportForms() {
            const searchForms = document.getElementsByClassName('search_form');
            const exportForm = document.getElementById('export_form');

            searchParams = new URLSearchParams([...new FormData(searchForms[0])]);

            exportForm.action = 'export_records.php?' + searchParams.toString() + '&table_name=records';
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