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
	<h1 class="headingBig">CLTIP Program Search</h1>
	<form action="search.php" method="post" class="queryForm">
		<div class="search">
			<label for="rollnumber">15-digit Roll Number:</label>
			<input type="text" id="rollnumber" name="rollnumber" placeholder="Enter Roll Number">
		</div>

		<div class="search">
			<label for="landowner">Landowner Name:</label>
			<input type="text" id="landowner" name="landowner" placeholder="Enter Landowner Name">
            </div>

<div class="search">
    <label for="pin">6-digit PIN:</label>
    <input type="text"  id="pin" name="pin" placeholder="Enter PIN">
</div>

<input class="button" type="submit" value="Search">
</form>

<div class="results">
<h2 class="headingSmall">Pending Requests for Reconsideration</h2>

<table class="resultsTable">
    <thead>
        <tr>
            <th>arn</th>
            <th>Current owner/Contact</th>
            <th>Current eligible area(MFTIP and CLTIP)</th>
            <th>PYP</th>
            <th>link to annual participation information</th>
            <th>Term end date</th>
        </tr>
    </thead>
    <tbody>
        <?php
        // Connect to the database
        $servername = "loki.trentu.ca";
        $username = "mnrf_project";
        $password = "Mnrdatabase@mysql1";
        $dbname = "mnrf_project";

        $conn = new mysqli($servername, $username, $password, $dbname);

        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        // Build the SQL query to retrieve the pending requests for reconsideration
        $sql = "SELECT * FROM Parcel";

        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            // output data of each row
            while($row = $result->fetch_assoc()) {
                echo "<tr>";

                echo "<td>";
                if (isset($row["ARN"])) {
                    echo $row["ARN"];
                }
                echo "</td>";

                echo "<td>";
                if (isset($row["Current owner/Contact"])) {
                    echo $row["Current owner/Contact"];
                }
                echo "</td>";

                echo "<td>";
                if (isset($row["Current eligible area(MFTIP and CLTIP)"])) {
                    echo $row["Current eligible area(MFTIP and CLTIP)"];
                }
                echo "</td>";

                echo "<td>";
                if (isset($row["PYP"])) {
                    echo $row["PYP"];
                }
                echo "</td>";

                echo "<td>";
                if (isset($row["link to annual participation information"])) {
                    echo $row["link to annual participation information"];
                }
                echo "</td>";

                echo "<td>";
                if (isset($row["Term end date"])) {
                    echo $row["Term end date"];
                }
                echo "</td>";

                echo "</tr>";
            }
        } else {
            echo "<tr><td colspan=\"7\">No Pending Requests for Reconsideration Found</td></tr>";
        }

        $conn->close();
        ?>
    </tbody>
</table>

</div>
<div class="results">
<h2 class="headingSmall">Completed Requests for Reconsideration</h2>

<table class="resultsTable">
    <thead>
        <tr>
            <th>arn</th>
            <th>Current owner/Contact</th>
            <th>Current eligible area(MFTIP and CLTIP)</th>
            <th>PYP</th>
            <th>link to annual participation information</th>
            <th>Term end date</th>
        </tr>
    </thead>
    <tbody>
        <?php
        // Connect to the database
        $servername = "loki.trentu.ca";
        $username = "mnrf_project";
        $password = "Mnrdatabase@mysql1";
        $dbname = "mnrf_project";

        $conn = new mysqli($servername, $username, $password, $dbname);

        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        // Build the SQL query to retrieve the pending requests for reconsideration
        $sql = "SELECT * FROM Parcel";

        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            // output data of each row
            while($row = $result->fetch_assoc()) {
                echo "<tr>";

                echo "<td>";
                if (isset($row["ARN"])) {
                    echo $row["ARN"];
                }
                echo "</td>";

                echo "<td>";
                if (isset($row["Current owner/Contact"])) {
                    echo $row["Current owner/Contact"];
                }
                echo "</td>";

                echo "<td>";
                if (isset($row["Current eligible area(MFTIP and CLTIP)"])) {
                    echo $row["Current eligible area(MFTIP and CLTIP)"];
                }
                echo "</td>";

                echo "<td>";
                if (isset($row["PYP"])) {
                    echo $row["PYP"];
                }
                echo "</td>";

                echo "<td>";
                if (isset($row["link to annual participation information"])) {
                    echo $row["link to annual participation information"];
                }
                echo "</td>";

                echo "<td>";
                if (isset($row["Term end date"])) {
                    echo $row["Term end date"];
                }
                echo "</td>";

                echo "</tr>";
            }
        } else {
            echo "<tr><td colspan=\"7\">No Pending Requests for Reconsideration Found</td></tr>";
        }

        $conn->close();
        ?>
    </tbody>
</table>
</div>
<?php include "../includes/footer.php" ?>
</body>
</html>

