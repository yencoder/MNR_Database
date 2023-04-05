<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>CLTIP Program Search</title>
    <link rel="stylesheet" href="..\styles\styles.css" />
</head>
<body>
<?php include '../includes/header.php';?>
	<h1>MPAC lists</h1>
    <div class="monthy lists">
    <h2>Monthly lists</h2>
	<a href="#" target="_blank"><button class="but">View current list</button></a>
    <a href="#" target="_blank"><button class="but">View past lists</button></a>
    </div>
    <div class="Annual lists">
    <h2>Annual lists</h2>
    <div class="">
    <h3>New properties </h3>
	<a href="#" target="_blank"><button class="but">Create list</button></a>
    <a href="#" target="_blank"><button class="but">View past lists</button></a>
    <div>
    </div>
    <div>
    <h3>Renewals</h3>
    <a href="#" target="_blank" ><button class="but">Create list</button></a>
    <a href="#" target="_blank"><button class="but">View past lists</button></a>
    </div>
    </div>
    <div>
    <h3>Removals</h3>    
    <a href="#" target="_blank"><button class="but">Create list</button></a>
    <a href="#" target="_blank"><button class="but">View past lists</button></a>
    </div>
    </div>

<div class="pending-requests">
<h2>Current monthly list</h2>

<table>
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

