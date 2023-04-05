<?php
// create array for errors
$errors = array();
// get and sanitize each input
$planNumber = trim(filter_var($_POST['planNumber'] ?? null, FILTER_SANITIZE_STRING));
$property = trim(filter_var($_POST['property'] ?? null, FILTER_SANITIZE_STRING));
$LOFirstName = trim(filter_var($_POST['LOFirstName'] ?? null, FILTER_SANITIZE_STRING));
$LOLastName = trim(filter_var($_POST['LOLastName'] ?? null, FILTER_SANITIZE_STRING));
$LOOrg = trim(filter_var($_POST['LOOrg'] ?? null, FILTER_SANITIZE_STRING));
// connect to database
include '../includes/library.php';
$pdo = connectDB();
// post submission
if (isset($_POST['searchLO'])) {
  $query = "select * from accounts";
} else if (isset($_POST['searchMunicipality'])) {
  $query = "select * from Municipality";
} else {
  // queury for default view from Parcels table
  $query = "select * from Parcel";
}
// query for results
$stmt=$pdo->prepare($query);
$stmt->execute();
$row = $stmt->fetchAll(PDO::FETCH_ASSOC);
// get all the column names
$columnNames = array_keys($row[0]);
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <?php $page_title = "Managed Forest Plan"; ?>
    <?php include "../includes/metadata.php" ?>
  </head>
  <body>
    <?php include '../includes/header.php';?>
    <form class="queryForm" action= "" method="POST">
      <div class="search">
        <h2>Plans</h2>
        <h3>Find a Managed Forest Plan Approver</h3>
        <div>
          <label for="LO">By Landowner:</label>
          <input id ="LO" type="text" placeholder="First Name" name="LOFirstName" value="<?=$LOFirstName;?>">
          <input id ="LO" type="text" placeholder="Last Name" name="LOLastName" value="<?=$LOLastName;?>">
          <input id ="LO" type="text" placeholder="Business/Organization" name="LOOrg" value="<?=$LOOrg;?>">
          <button type="submit" name="searchLO" value="Search">Search</button>
        </div>
        <div>
          <label for="property">By Municipality:</label>
          <input id ="property" type="text" placeholder="15-digit roll number" name="property" value="<?=$property;?>">
          <button type="submit" name="searchMunicipality" value="Search">Search</button>
        </div>
      </div>
      <div class= "searchResults">
        <h2>Search Results</h2>
        <div class="results">
          <table class="resultsTable">
            <thead>
              <tr>
                <?php foreach($columnNames as $column):?>
                  <th scope="col"><?=$column?></th>
                <?php endforeach;?>
              </tr>
            </thead>
            <tbody>
              <?php // get all the row data
                foreach($row as $rowData):?>
                <tr>
                  <?php foreach($rowData as $item):?>
                    <td scope="row"><?=$item?></td>
                  <?php endforeach?>
                </tr>
              <?php endforeach?>
            </tbody>
          </table>
        </div>
      </div>
    </form>
    <?php include "../includes/footer.php" ?>
  </body>
</html>