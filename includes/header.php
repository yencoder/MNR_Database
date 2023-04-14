<header>
  <h1>Ministry of Natural Resources and Forestry</h1>
  <nav>
    <ul>
      <li><a href="home.php">Home</a></li>
      <?php
        // start session
        session_start();
        // session check for user information
        if (!isset($_SESSION['email'])) { ?>
          <li><a href="landowner-login.php">Public Login</a></li>
      <?php 
        } else { ?>
          <li><a href="CLTIP_home.php">CLTIP</a></li>
          <li><a href="MFTIP_home.php">MFTIP</a></li>
          <li><a href="logout.php">Logout</a></li>
      <?php } ?>
    </ul>
  </nav>
</header>
<main>
<nav class="mainNav">
  <?php if(isset($_SESSION['email'])) { ?>
    <li><a href="CLTIP_home.php">CLTIP Home</a></li>
    <li><a href="CLTIP-rfr.php">CLTIP Reconsideration</a></li>
    <li><a href="MFTIP_home.php">MFTIP Home</a></li>
    <li><a href="mftipPlan.php">MFTIP Plans</a></li>
    <li><a href="mftipPlanApprover.php">MFTIP Plan Approver</a></li>
    <li><a href="mftipLandowner.php">MFTIP Landowner</a></li>
    <li><a href="MFTIP-rfr.php">MFTIP Reconsideration</a></li>
  <?php }?>
  </nav>