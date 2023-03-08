<header>
  <h1>Ministry of Natural Resources and Forestry</h1>
  <nav>
    <ul>
      <li><a href="home.php">Home</a></li>
      <?php
        // start session
        session_start();
        // session check for user information
        if (!isset($_SESSION['username'])) { ?>
          <li><a href="publicLogin.php">Login</a></li>
      <?php
        } elseif(!isset($_SESSION['rollNumber'])) { ?>
          <li><a href="publicLogin.php">Login</a></li>
      <?php 
        } else { ?>
          <li><a href="home.php">My Profile</a></li>
          <li><a href="logout.php">Logout</a></li>
      <?php } ?>
    </ul>
  </nav>
</header>
<main>