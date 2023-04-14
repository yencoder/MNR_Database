<?php
require_once('../includes/library.php');
// create array for errors
$errors = array();
// get and sanitize each input
$email = trim(filter_var($_POST['email'] ?? null, FILTER_SANITIZE_EMAIL));
$password = trim(filter_var($_POST['password'] ?? null, FILTER_SANITIZE_STRING));
$confirmPassword = trim(filter_var($_POST['confirmPassword'] ?? null, FILTER_SANITIZE_STRING));
// ensure that there is information in $_Post
if (isset($_POST['submit'])) {
  // connect to the database
  $pdo = connectDB();
  // check creditionals
  $query = "select email, password from `employees` WHERE email=?";
  $stmt = $pdo->prepare($query);
  $stmt->execute([$email]);
  $results = $stmt->fetch();
  // check email field
  if(empty($email)) { $errors['emptyEmail'] = true; }
  else {
    if(!filter_var($email, FILTER_VALIDATE_EMAIL)) { $errors['incorrectEmail'] = true; }
    // if email does not exist in the database
    elseif (!$results) { $errors['emailDoesNotExist'] = true; }
    // if email exists in the database
    else {
      // check password field
      $upperCase = preg_match('@[A-Z]@', $password);
      $lowerCase = preg_match('@[a-z]@', $password);
      $numberCase = preg_match('@[0-9]@', $password);
      $specialCase = preg_match('@[^\w]@', $password);
      if(empty($password)) { $errors['emptyPassword'] = true; }
      else {
        // if same as old password
        if (password_verify($password, $results['password'])) { $errors['oldPassword'] = true; }
        elseif (!$upperCase || !$lowerCase || !$numberCase || !$specialCase || strlen($password) < 8) {
          if (!$upperCase) { $errors['passwordCharsUpper'] = true; }
          if (!$lowerCase) { $errors['passwordCharsLower'] = true; }
          if (!$numberCase) { $errors['passwordCharsNumber'] = true; }
          if (!$specialCase) { $errors['passwordCharsSpecial'] = true; }
          if (!strlen($password) < 8) { $errors['passwordLength'] = true; }
        }
      }
      // check confirm password field
      if ($password != $confirmPassword) { $errors['confirmPassword'] = true; }
    }
  }
  // error verification
  if(!sizeof($errors)) {
    // insert creditionals into the database
    $password = password_hash($password, PASSWORD_DEFAULT);
    $query = "UPDATE employees SET `password` = ? WHERE email = ?";
    $stmt = $pdo->prepare($query)->execute([$password, $email]);
    // redirect
    header("Location: home.php");
    exit();
  }
}
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <?php $page_title = "Reset Password"; ?>
    <?php include "../includes/metadata.php" ?>
    <link rel="stylesheet" href="styles/master.css"/>
  </head>
  <body>
    <?php include '../includes/header.php';?>
    <section>
      <form action="<?=htmlentities($_SERVER['PHP_SELF'])?>" method="POST" class="loginForm">
        <h2>Reset Password</h2>
        <div class="logincontainer">
          <div>
            <label for="email"><b>Your email</b></label>
            <input id = "email" type="text" placeholder="Email" name="email" value="<?=$email?>">
          </div>
          <div class="passwordErrors">
            <span class="error <?=!isset($errors['emptyEmail']) ? 'hidden' : "";?>">Please enter an email</span>
            <span class="error <?=!isset($errors['incorrectEmail']) ? 'hidden' : "";?>">Please use a valid email address</span>
            <span class="error <?=!isset($errors['emailDoesNotExist']) ? 'hidden' : "";?>">Email does not exist</span>
          </div>
          <div>
            <label for="password"><b>Enter a password</b></label>
            <input id="password" type="password" placeholder="Password" name="password" autocomplete="new-password">
          </div>
          <div class="passwordErrors">
            <ul>
              <li><span class="error <?=!isset($errors['emptyPassword']) ? 'hidden' : "";?>">Please enter a new password</span></li>
              <li><span class="error <?=!isset($errors['passwordCharsUpper']) ? 'hidden' : "";?>">Password must contain at least 1 upper case letter</span></li>
              <li><span class="error <?=!isset($errors['passwordCharsLower']) ? 'hidden' : "";?>">Password must contain at least 1 lower case letter</span></li>
              <li><span class="error <?=!isset($errors['passwordCharsNumber']) ? 'hidden' : "";?>">Password must contain at least 1 number</span></li>
              <li><span class="error <?=!isset($errors['passwordCharsSpecial']) ? 'hidden' : "";?>">Password must contain at least 1 special character</span></li>
              <li><span class="error <?=!isset($errors['passwordLength']) ? 'hidden' : "";?>">Password must be longer than 8 characters</span></li>
              <li><span class="error <?=!isset($errors['oldPassword']) ? 'hidden' : "";?>">Cannot use previously used passwords</span></li>
            </ul>
          </div>
          <div>
            <label for="confirmPassword"><b>Confirm password</b></label>
            <input id="confirmPassword" type="password" placeholder="Repeat Password" name="confirmPassword">
          </div>
          <div class="passwordErrors">
            <span class="error <?=!isset($errors['confirmPassword']) ? 'hidden' : "";?>">Passwords do not match</span>
          </div>
          <div>
            <button type="submit" name="submit">Reset Password</button>
          </div>           
        </div>
      </form>
    </section>
    <?php include "../includes/footer.php" ?>
  </body>
</html>