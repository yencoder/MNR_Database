<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>CLTIP Program Search</title>
	<style>
		body {
			font-family: Arial, sans-serif;
			background-color: #F2F2F2;
			color: #333;
			text-align: center;
		}

		h1 {
			margin-top: 50px;
			font-size: 36px;
		}

		form {
			display: inline-block;
			vertical-align: top;
			margin: 50px auto;
			max-width: 600px;
			padding: 20px;
			background-color: #FFF;
			border-radius: 5px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
			text-align: left;
		}

		.label-input-group {
			display: flex;
			flex-wrap: wrap;
			align-items: center;
			margin-bottom: 10px;
		}

		label {
			flex-basis: 150px;
			font-size: 20px;
			margin-right: 20px;
		}

		input[type="text"] {
			padding: 10px;
			font-size: 18px;
			border-radius: 5px;
			border: none;
			box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
			flex-basis: 250px;
		}

		input[type="submit"] {
			padding: 10px 20px;
			font-size: 18px;
			background-color: #4CAF50;
			color: #FFF;
			border-radius: 5px;
			border: none;
			cursor: pointer;
			margin-left: 170px;
		}

		input[type="submit"]:hover {
			background-color: #2E8B57;
		}

		.pending-requests {
	display: block;
	margin: 50px auto;
	max-width: 1000px;
	padding: 20px;
	background-color: #FFF;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
	text-align: left;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
	font-size: 16px;
	margin-left: auto;
	margin-right: auto;
}

		th {
			background-color: #4CAF50;
			color: #FFF;
			font-weight: bold;
			padding: 10px;
			text-align: left;
		}

		td {
			padding: 10px;
			border-bottom: 1px solid #DDD;
		}

		tr:nth-child(even) {
			background-color: #F2F2F2;
		}
	</style>
</head>
<body>
	<h1>CLTIP Program Search</h1>
	<form action="search.php" method="post">
		<div class="label-input-group">
			<label for="rollnumber">15-digit Roll Number:</label>
			<input type="text" id="rollnumber" name="rollnumber" placeholder="Enter Roll Number">
		</div>

		<div class="label-input-group">
			<label for="landowner">Landowner Name:</label>
			<input type="text" id="landowner" name="landowner" placeholder="Enter Landowner Name">
            </div>

<div class="label-input-group">
    <label for="pin">6-digit PIN:</label>
    <input type="text" id="pin" name="pin" placeholder="Enter PIN">
</div>

<input type="submit" value="Search">
</form>

<div class="pending-requests">
<h2>Pending Requests for Reconsideration</h2>

<table>
    <thead>
        <tr>
            <th>ARN</th>
            <th>PIN</th>
            <th>Submitted Date</th>
            <th>Type of Request</th>
            <th>Year Requested</th>
            <th>Reason</th>
            <th>Details</th>
        </tr>
    </thead>
    <tbody>
        <?php
        // Connect to the database
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "mnrf";

        $conn = new mysqli($servername, $username, $password, $dbname);

        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        // Build the SQL query to retrieve the pending requests for reconsideration
        $sql = "SELECT * FROM pending_requests";

        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            // output data of each row
            while($row = $result->fetch_assoc()) {
                echo "<tr>";
                echo "<td>" . $row["arn"] . "</td>";
                echo "<td>" . $row["pin"] . "</td>";
                echo "<td>" . $row["submitted_date"] . "</td>";
                echo "<td>" . $row["type_of_request"] . "</td>";
                echo "<td>" . $row["year_requested"] . "</td>";
                echo "<td>" . $row["reason"] . "</td>";
                echo "<td><a href=\"details.php?id=" . $row["id"] . "\">View Details</a></td>";
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
<div class="pending-requests">
<h2>Completed Requests for Reconsideration</h2>

<table>
    <thead>
        <tr>
            <th>ARN</th>
            <th>PIN</th>
            <th>Submitted Date</th>
            <th>Type of Request</th>
            <th>Year Requested</th>
            <th>Reason</th>
            <th>Status</th>
            <th>Details</th>
        </tr>
    </thead>
    <tbody>
        <?php
        // Connect to the database
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "mnrf";

        $conn = new mysqli($servername, $username, $password, $dbname);

        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        // Build the SQL query to retrieve the completed requests for reconsideration
        $sql = "SELECT * FROM completed_requests";

        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            // output data of each row
            while($row = $result->fetch_assoc()) {
                echo "<tr>";
                echo "<td>" . $row["arn"] . "</td>";
                echo "<td>" . $row["pin"] . "</td>";
                echo "<td>" . $row["submitted_date"] . "</td>";
                echo "<td>" . $row["type_of_request"] . "</td>";
                echo "<td>" . $row["year_requested"] . "</td>";
                echo "<td>" . $row["reason"] . "</td>";
                echo "<td>" . $row["status"] . "</td>";
                echo "<td><a href=\"details.php?id=" . $row["id"] . "\">View Details</a></td>";
                echo "</tr>";
            }
        } else {
            echo "<tr><td colspan=\"8\">No Completed Requests for Reconsideration Found</td></tr>";
        }

        $conn->close();
        ?>
    </tbody>
</table>
</div>
</body>
</html>

