<header>
  <h1>Sign Up with Us&#33;</h1>
  <nav>
    <ul>
      <li><a href="login.php">Home</a></li>
      <?php
        // START SESSION
        session_start();
        // SESSION CHECK FOR USER INFO
        if (!isset($_SESSION['username'])) { ?>  
          <li><a href="login.php">Login</a></li>
      <?php
        } else { ?>
          <li><a href="home.php">My Stuff</a></li>
          <li><a href="logout.php">Logout</a></li>
      <?php } ?>
    </ul>
  </nav>
</header>
<main>