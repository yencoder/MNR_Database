<?php
// create array for errors
$errors = array();
// get and sanitize each input
$rNumber = trim(filter_var($_POST['rNumber'] ?? null, FILTER_SANITIZE_STRING));
$landlordName = trim(filter_var($_POST['landlordNames'] ?? null, FILTER_SANITIZE_STRING));
$businessName = trim(filter_var($_POST['businessName'] ?? null, FILTER_SANITIZE_STRING));
$PIN = trim(filter_var($_POST['PIN'] ?? null, FILTER_SANITIZE_STRING));
$LOOrg = trim(filter_var($_POST['LOOrg'] ?? null, FILTER_SANITIZE_STRING));
// connect to database
include '../includes/library.php';
$pdo = connectDB();
// post submission
if (isset($_POST['rNumber'])) {
    $rNumber = $_POST['rNumber'];
    $query = "SELECT * FROM Parcel WHERE ARN='" . $rNumber . "'";

} else if (isset($_POST['landlordName'])) {
    $landlordName = $_POST['landlordName'];
    $query = "SELECT * FROM Parcel WHERE Current_owner='" . $landlordName . "'";
} else if (isset($_POST['businessName'])) {
    $businessName = $_POST['businessName'];
    $query = "SELECT * FROM Parcel WHERE Current_owner='" . $businessName . "'";
} else if (isset($_POST['PIN'])) {
    $PIN = $_POST['PIN'];
    $query = "SELECT * FROM Cltip_application WHERE PIN='" . $PIN . "'";
} else {
    // queury for default view from Parcels table
    $query = "select * from Parcel";
}
// query for results
$stmt = $pdo->prepare($query);
$stmt->execute();
$row = $stmt->fetchAll(PDO::FETCH_ASSOC);
// get all the column names
$columnNames = array_keys($row[0]);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <?php $page_title = "CLTIP home"; ?>
    <?php include "../includes/metadata.php" ?>
    <link rel="stylesheet" href="styles/master.css" />
</head>

<body>
    <?php include '../includes/header.php'; ?>
    <section class="section-box">
        <h1 class="section-title">Search</h1>

        <h2>Find property</h2>
        <form method="POST">
            Name: <input type="text" name="rNumber" />
            <input type="submit" value="search" />
        </form>
        <p>15-digits roll number</p>
    </section>

    <section class="section-box">
        <h1 class="section-title">Find a landowner:</h1>

        <h2>Name</h2> <!--I didn't find "first name last name fields so I kept it there-->
        <form method="POST">
            Name: <input type="text" name="landlordName" />
            <input type="submit" value="search" />

            Business/Organization Name: <input type="text" name="businessName" />
            <input type="submit" value="search" />
        </form>
    </section>

    <section class="section-box">
        <h1 class="section-title">Find a CLTIP application:</h1>

        <h2>PIN</h2> <!--I didn't find "first name last name fields so I kept it there-->
        <form method="POST">
            <input type="text" name="PIN" />
            <input type="submit" value="search" />
            <p>5-digits pin</p>
        </form>
    </section>

    <section class="section-box">
        <h1 class="section-title">Search Results:</h1>
        <h2>Search Results</h2>
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
                    foreach ($row as $rowData): ?>
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
        </div>
    </section>


    <section class="section-box">
        <h1 class="section-title">Work process:</h1>
        <div class="button-container">
            <a href="#" class="button">MPAC list</a>
            <a href="#" class="button">Requests for Reconsideration</a>
            <a href="#" class="button">Mailout</a>
            <a href="#" class="button">Call log</a>
            <a href="#" class="button">Annual eligible area updates</a>
        </div>
    </section>
    <section class="section-box">
        <h1 class="section-title">Records:</h1>
        <div class="button-container">
            <a href="#" class="button">Properties</a>
            <a href="#" class="button">CLTIP applications</a>
            <a href="#" class="button">CCL applications</a>
            <a href="#" class="button">Landowners</a>
            <a href="#" class="button">More...</a>
        </div>
    </section>
    <?php include "../includes/footer.php" ?>

</html>