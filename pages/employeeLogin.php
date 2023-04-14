<?php
// create array for errors
$errors = array();
// get and sanitize each input
$user = trim(filter_var($_POST['email'] ?? null, FILTER_SANITIZE_STRING));
$pass = trim(filter_var($_POST['password'] ?? null, FILTER_SANITIZE_STRING));
// if cookies already exists
if(isset($_COOKIE['mysitecookie'])) { $user=$_COOKIE['mysitecookie']; }
// post submission
if (isset($_POST['submit'])) {
  // connect to database
  include '../includes/library.php';
  $pdo = connectDB();
  // query for rollNumber & pin
  $query = "select email, password from employees where email=?";  
  $stmt=$pdo->prepare($query);
  $results = $stmt->execute([$user]);
  if($row = $stmt->fetch()) {
    // if(password_verify($pass, $row['pin'])) {
    if($pass == $row['password']) {
      // start a session
      session_start();
      // set up a session with the user's creditionals
      $_SESSION['email'] = $user;
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
            <label for="email">Email</label>
            <input id ="email" type="text" placeholder="Enter Email" name="email" required value="<?=$user;?>">
          </div>
          <div>
            <label for="password">Password</label>
            <input id = "password" type="password" placeholder="Enter Password" name="password" required value="<?=$pass;?>"> 
          </div>
          <div><span class="error <?=!isset($errors['login']) ? 'hidden' : "";?>">Invalid email and/or password</span></div>
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