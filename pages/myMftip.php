<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "mnrf";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

$sql = "SELECT plan_number, approved_by, plan_start_date, plan_end_date, progress_report_due, renewal_plan_due FROM parcel WHERE id = 1";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
  while($row = mysqli_fetch_assoc($result)) {
    $plan_number = $row["plan_number"];
    $approved_by = $row["approved_by"];
    $plan_start_date = $row["plan_start_date"];
    $plan_end_date = $row["plan_end_date"];
    $progress_report_due = $row["progress_report_due"];
    $renewal_plan_due = $row["renewal_plan_due"];
  }
} else {
  echo "0 results";
}

mysqli_close($conn);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>5 page client interface</title>
    <link rel="stylesheet" href="css\styles.css"/>
    <style>
      *{
    margin: 0%;
    padding: 0%;
    list-style: none;
    text-decoration: none;
    font-family: Arial, Helvetica, sans-serif;
}

body {
    background-color: #DBF9FC;
}

.header {
    height: 8em;
    text-align: center;
    background: #0464a3;
    color: white;
    font-size: 30px;
    font-family: Arial, Helvetica, sans-serif;
    font-size: medium;
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin: 0 auto;
    
}

/*.head{

}*/

#heading{
    padding-left: 30px;
    flex-grow: 1;
    margin-right: auto;
}

.logoimage{
    align-items: right;
    justify-content: right;
    flex: 1 1 auto;
    justify-content: right;
    margin-left: auto;
}

#logo{
    width: 150px;
}

.buttons{
    text-align: center;
    font-size: 30px;
    font-family: Arial, Helvetica, sans-serif;
    font-size: medium;
    display: flex;
    align-items: center;
    justify-content: space-evenly;
    margin: 0 auto;
    padding: 20px;
    border: 5px solid;
    flex-direction: row;
}

.twobuttons{
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin: 0 auto;
    padding: 20px;
}

#apply-text{
    padding: 30px;
}

.apply{
    display: flex;
    padding: 30px;
    flex-wrap: wrap;
    justify-content: center;
    align-items: center;
}

#apply-button{
    background-color: #0464a3;
    color: white;
    height: 60px;
    width: 120px;
    font-size: 25px;
    align-content: space-between;
}

.applyb{
    padding: 30px;
    display: flex;
    justify-content: center;
    align-items: center;
   
}

/* Add some styles to the table */
table {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
  margin-top: 50px;
}

td, th {
  border: 1px solid #ddd;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2;}

tr:hover {background-color: #ddd;}

th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #0464a3;
  color: white;
}

.container{
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    align-items: center;
}

.container>.box{
    background-color: #ffffff;
    border: 1px solid #c4c4c4;
    border-radius: 10px;
    box-shadow: 0px 3px 3px #c4c4c4;
    display: flex;
    flex-direction: column;
    margin: 1rem;
    padding: 1rem;
    width: 90%;
}

.box h2{
    font-size: 1.5rem;
    margin-bottom: 0.5rem;
}

.box p{
    font-size: 1.1rem;
    margin-bottom: 1rem;
}

.box a{
    background-color: #0464a3;
    border: none;
    border-radius: 5px;
    color: #fff;
    font-size: 1.1rem;
    padding: 0.5rem;
    text-align: center;
    text-decoration: none;
}

.box a:hover{
    background-color: #044d75;
}

.footer {
    background-color: #0464a3;
    color: white;
    text-align: center;
    padding: 10px;
    font-size: small;
}

.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

@media (max-width: 800px){
    .header {
        flex-wrap: wrap;
        height: auto;
    }

    #heading {
        padding-left: 10px;
    }

    .logoimage {
        flex: 0 0 100%;
        margin-top: 1rem;
        order: 2;
    }

    #logo {
        width: 50%;
    }

    .buttons {
        flex-wrap: wrap;
        justify-content: center;
        margin: 1rem 0;
    }

    .twobuttons {
        flex-direction: column;
        align-items: center;
    }
}
</style>
</head>
<body>
  <header class="header">
      <div id="heading">
          <h1>Municipal Natural Resources Fund</h1>
      </div>
      <div class="logoimage">
          <img id="logo" src="images\mnrf_logo.png" alt="MNRF Logo">
      </div>
  </header>
  <nav class="navbar">
      <div class="buttons">
          <a href="index.html">Home</a>
          <a href="about.html">About</a>
          <a href="resources.html">Resources</a>
          <a href="contact.html">Contact</a>
          <a href="login.html">Login</a>
      </div>
  </nav>
  <div class="apply">
      <div id="apply-text">
          <h2>Apply for funding</h2>
          <p>Fill out the application form to apply for funding from the Municipal Natural Resources Fund.</p>
      </div>
      <div class="applyb">
          <a href="apply.html" id="apply-button">Apply Now</a>
      </div>
  </div>

  <div class="container">
      <div class="box">
          <h2>Property Information</h2>
          <p>Plan Number: <?php echo $plan_number; ?></p>
          <p>Approved By: <?php echo $approved_by; ?></p>
          <p>Plan Start Date: <?php echo $plan_start_date; ?></p>
          <p>Plan End Date: <?php echo $plan_end_date; ?></p>
          <p>Progress Report Due: <?php echo $progress_report_due; ?></p>
          <p>Renewal Plan Due: <?php echo $renewal_plan_due; ?></p>
      </div>
  </div>

  <footer class="footer">
      <div class="clearfix">
          <p>&copy; 2023 Municipal Natural Resources Fund. All rights reserved.</p>
      </div>
  </footer>
</body>
</html>

