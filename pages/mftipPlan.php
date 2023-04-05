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
if ($planNumber != null) {
  $query = "select * from Parcel where PYP = ?";
  $stmt=$pdo->prepare($query);
  $stmt->execute([$planNumber]);
} else if ($property != null) {
  $query = "select * from landowners where ARN = ?";
  $stmt=$pdo->prepare($query);
  $stmt->execute([$property]);
} else if (($LOFirstName != null) || ($LOLastName != null) || ($LOOrg != null))  {
  if($LOFirstName != null) {
    $query = "select * from accounts where firstName = ?";
    $stmt=$pdo->prepare($query);
    $stmt->execute([$LOFirstName]);
  } else if ($LOLastName != null) {
    $query = "select * from accounts where lastName = ?";
    $stmt=$pdo->prepare($query);
    $stmt->execute([$LOFirstName]);
  } else if ($LOOrg != null) {
    $query = "select * from Municipality where name = ?";
    $stmt=$pdo->prepare($query);
    $stmt->execute([$LOOrg]);
  } else {
    $query = "select * from Municipality";
    $stmt=$pdo->prepare($query);
    $stmt->execute();
  }
} else {
  // queury for default view from Parcels table
  $query = "select * from accounts";
  $stmt=$pdo->prepare($query);
  $stmt->execute();
}
$row = $stmt->fetchAll(PDO::FETCH_ASSOC);
// get all the column names
if(sizeof($row) == 0) {
  $query = "select * from accounts";
  $stmt=$pdo->prepare($query);
  $stmt->execute();
  $row = $stmt->fetchAll(PDO::FETCH_ASSOC);
}
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
        <h3>Find a Managed Forest Plan</h3>
        <div>
          <label for="planNumber">By Plan Number:</label>
          <input id ="planNumber" type="text" placeholder="5-digit plan number" name="planNumber" value="<?=$planNumber;?>">
          <button type="submit" name="searchPlanNumber" value="">Search</button>
        </div>
        <div>
          <label for="property">By Property:</label>
          <input id ="property" type="text" placeholder="15-digit roll number" name="property" value="<?=$property;?>">
          <button type="submit" name="searchProperty" value="">Search</button>
        </div>
        <div>
          <label for="LO">By Landowner:</label>
          <input id ="LO" type="text" placeholder="First Name" name="LOFirstName" value="<?=$LOFirstName;?>">
          <input id ="LO" type="text" placeholder="Last Name" name="LOLastName" value="<?=$LOLastName;?>">
          <input id ="LO" type="text" placeholder="Business/Organization" name="LOOrg" value="<?=$LOOrg;?>">
          <button type="submit" name="searchLO" value="">Search</button>
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