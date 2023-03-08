<?php
// start session
session_start();
// clear session
$_SESSION = array();
// end session
session_destroy();
if (isset($_POST["submit"])) {
  // redirect
  header("Location: publicLogin.php");
  exit();
}
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <?php $page_title = "Logout"; ?>
    <?php include "../includes/metadata.php" ?>
  </head>
  <body class="logout">
    <?php include '../includes/header.php'; ?>
    <section>
      <form method="POST">
        <h2>You have been logged out</h2>
        <button type="submit" name="submit">Thank you!</button>
      </form>
    </section>
    <?php include "../includes/footer.php" ?>
  </body>
</html>