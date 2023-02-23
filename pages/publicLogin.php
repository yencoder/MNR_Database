<?php
// create array for errors
$errors = array();
// get and sanitize each input
$user = trim(filter_var($_POST['rollNumber'] ?? null, FILTER_SANITIZE_STRING));
$pass = trim(filter_var($_POST['psw'] ?? null, FILTER_SANITIZE_STRING));
// if cookies already exists
if(isset($_COOKIE['mysitecookie'])) { $user=$_COOKIE['mysitecookie']; }
// post submission
if (isset($_POST['submit'])) {
  // connect to database
  include 'includes/library.php';
  $pdo = connectDB();
  // query for username
  $query = "select rollNumber, password from password where username=?";  
  $stmt=$pdo->prepare($query);
  $results = $stmt->execute([$user]);
  // erorr verification
  if($row = $stmt->fetch()) {      
    if(password_verify($pass, $row['password'])) {
      session_start();
      $_SESSION['username'] = $user;
      $_SESSION['userid'] = $row['userid'];
      header("Location:CLTIP_home.php");
      exit();
    }
    else { $errors['login'] = true; }
  }
  else { $errors['login'] = true; }
  // set if cookie box is checked
  if (isset($_POST['remember'])) { setcookie("mysitecookie",$username,time()+60*60*24*30*12);}
}
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <?php $page_title = "Log in"; ?>
    <?php include "includes/metadata.php" ?>
  </head>
  <body class="logincreate">
    <?php include 'includes/header.php';?>
    <section>
      <form action="<?=htmlentities($_SERVER['PHP_SELF'])?>" method="POST" autocomplete="off">
        <h2>Log in</h2>
        <div class="container">
          <div>
            <label for="rollNumber
        ">Roll Number</label>
            <input id ="rollNumber
        " type="text" placeholder="Enter Roll Number" name="rollNumber
        " required value="<?=$user;?>">
          </div>
          <div>
            <label for="psw">Password</label>
            <input id = "psw" type="password" placeholder="Enter Password" name="psw" required value="<?=$pass;?>"> 
          </div>
          <div><span class="error <?=!isset($errors['login']) ? 'hidden' : "";?>">Invalid roll number and/or password</span></div>
          <div><button id="submit" name="submit">Log In</button></div>
          <div>
            <label>Remember me</label>
            <input type="checkbox" name="remember">
          </div>
          <div>
            <span class="psw"><a href="forgotPassword.php">Forgot password</a></span>
          </div>
        </div>    
      </form>
    </section>
    <?php include "includes/footer.php" ?>
  </body>
</html>