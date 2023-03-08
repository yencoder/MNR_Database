<?php
include '../includes/library.php';
$pdo = connectDB();
// post submission


        // Build the SQL query to retrieve the pending requests for reconsideration
        $query = "SELECT * FROM Parcel";
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
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>CLTIP Program Search</title>
    <link rel="stylesheet" href="../styles/master.css" />
</head>
<body>
<?php include '../includes/header.php';?>
	
	<form action="" method="post" class="queryForm">
        <div class="search">
            <h1>CLTIP Program Search</h1>
        </div>
		<div>
			<label for="rollnumber">15-digit Roll Number:</label>
			<input type="text" id="rollnumber" name="rollnumber" placeholder="Enter Roll Number">
		</div>

		<div>
			<label for="landowner">Landowner Name:</label>
			<input type="text" id="landowner" name="landowner" placeholder="Enter Landowner Name">
            </div>

    <label for="pin">6-digit PIN:</label>
    <input type="text"  id="pin" name="pin" placeholder="Enter PIN">
</div>

<input class="button" type="submit" value="Search">
</form>

<div class="searchResults">
<h2 class="headingSmall">Pending Requests for Reconsideration</h2>
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
<div class="results">
<h2 class="headingSmall">Completed Requests for Reconsideration</h2>

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
<?php include "../includes/footer.php" ?>
</body>
</html>

