<?php
// create array for errors
$errors = array();
// get and sanitize each input
$user = trim(filter_var($_POST['rollNumber'] ?? null, FILTER_SANITIZE_STRING));
$pass = trim(filter_var($_POST['pin'] ?? null, FILTER_SANITIZE_STRING));
// if cookies already exists
if(isset($_COOKIE['mysitecookie'])) { $user=$_COOKIE['mysitecookie']; }
// post submission
if (isset($_POST['submit'])) {
  // connect to database
  include '../includes/library.php';
  $pdo = connectDB();
  // query for rollNumber & pin
  $query = "select rollNumber, pin from accounts where rollNumber=?";  
  $query = "select rollNumber, pin from accounts where rollNumber=?";  
  $stmt=$pdo->prepare($query);
  $results = $stmt->execute([$user]);
  if($row = $stmt->fetch()) {
    // if(password_verify($pass, $row['pin'])) {
    if($pass == $row['pin']) {
      // start a session
      session_start();
      // set up a session with the user's creditionals
      $_SESSION['rollNumber'] = $user;
      header("Location: CLTIP_home.php");
      exit();
    }
    else { $errors['login'] = true; }
  }
  else { $errors['login'] = true;}
  // set if cookie box is checked
  if (isset($_POST['remember'])) { setcookie("mysitecookie",$username,time()+60*60*24*30*12);}
}
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <?php $page_title = "MNRF CLTIP & MFTIP Employee Login"; ?>
    <?php include "../includes/metadata.php" ?>
  </head>
  <body class="logincreate">
    <?php include '../includes/header.php';?>
    <section>
      <form action="<?=htmlentities($_SERVER['PHP_SELF'])?>" method="POST" autocomplete="off" class="loginForm">
        <h2>MNRF Staff Login</h2>
        <div class="logincontainer">
          <div>
            <label for="rollNumber">Roll Number</label>
            <input id ="rollNumber" type="text" placeholder="Enter Roll Number" name="rollNumber" required value="<?=$user;?>">
          </div>
          <div>
            <label for="pin">Password</label>
            <input id = "pin" type="password" placeholder="Enter Password" name="pin" required value="<?=$pass;?>"> 
          </div>
          <div><span class="error <?=!isset($errors['login']) ? 'hidden' : "";?>">Invalid roll number and/or password</span></div>
          <div><button id="submit" name="submit">Log In</button></div>
          <div>
            <label>Remember me</label>
            <input type="checkbox" name="remember">
          </div>
          <div>
            <span class="pin"><a href="forgotPassword.php">Forgot password</a></span>
          </div>
        </div>    
      </form>
    </section>
    <?php include "../includes/footer.php" ?>
  </body>
</html>