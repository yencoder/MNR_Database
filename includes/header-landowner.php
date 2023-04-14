<header>
  <h1>Ministry of Natural Resources and Forestry</h1>
  <nav>
    <ul>
      <li><a href="home.php">Home</a></li>
      <li><a href="logout.php">Logout</a></li>
    </ul>
  </nav>
</header>
<main>
<nav class="mainNav">
  <?php if(isset($_SESSION['rollNumber'])) { ?>
    <li><a href="CLTIP_home.php">CLTIP Home</a></li>
    <li><a href="CLTIP-Reconsideration.php">CLTIP Reconsideration</a></li>
    <li><a href="mftipPlan.php">MFTIP Plans</a></li>
    <li><a href="mftipPlanApprover.php">MFTIP Plan Approver</a></li>
    <li><a href="mftipLandowner.php">MFTIP Landowner</a></li>
  <?php }?>
  </nav>