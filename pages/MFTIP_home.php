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
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <?php $page_title = "MFTIP home"; ?>
    <?php include "../includes/metadata.php" ?>
    <link rel="stylesheet" href="styles/master.css" />
</head>

<body>
    <?php include '../includes/mftip-header.php'; ?>
    <h1 class="section-title">MFTIP Home</h1>
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
        <h1 class="section-title">Find a MFTIP application:</h1>

        <h2>PIN</h2> <!--I didn't find "first name last name fields so I kept it there-->
        <form method="POST">
            <input type="text" name="PIN" />
            <input type="submit" value="search" />
            <p>5-digits pin</p>
        </form>
    </section>
    <?php
    // query for results
    $stmt = $pdo->prepare($query);
    $stmt->execute();
    $row = $stmt->fetchAll(PDO::FETCH_ASSOC);
    ?>

    <section class="section-box">
        <h1 class="section-title">Search Results:</h1>
        <h2>Search Results</h2>
        <div class="results">
            <?php if (empty($row)): ?>
                <div class="no-results">No results found</div>
            <?php else: ?>
                <?php // get all the column names
                    $columnNames = array_keys($row[0]);
                    ?>
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
            <?php endif; ?>
        </div>
    </section>


    <section class="section-box">
        <h1 class="section-title">Work process:</h1>
        <div class="button-container">
            <a href="MPAC_data.php" class="button">MPAC list</a>
            <a href="MFTIP-rfr.php" class="button">Requests for
                Reconsideration</a>
            <a href="annual-eligible-mftip.php" class="button">Annual eligible area updates</a>
        </div>
    </section>
    <section class="section-box">
        <h1 class="section-title">Records:</h1>
        <div class="button-container">
            <a href="miftip-property.php" class="button">Properties</a>
            <a href="miftip-plan.php" class="button">MFTIP applications</a>
            <a href="miftip-landowners.php" class="button">Landowners</a>
        </div>
    </section>
    <?php include "../includes/footer.php" ?>

</html>