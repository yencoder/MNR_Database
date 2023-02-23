<?php
include '../includes/library.php';



?>


<fieldset>

    <h1>Search</h1>

    <h2>Find property</h2>
    <form action=" search.php" method="get">
        Name: <input type="text" name="rNumber" />
        <input type="submit" value="visit" />
    </form>
    15-digits roll number
</fieldset>
<fieldset>

    <h1>Find a landowner:</h1>

    <h2>Name</h2> <!--I didnt find "first name last name fields so i keep it there-->
    <form action=" findLandOwner.php" method="get">
        Name: <input type="text" name="landlordName" />
        <input type="submit" value="visit" />

        Business/Organization Name: <input type="text" name="businessName" />
        <input type="submit" value="visit" />
    </form>
</fieldset>
<fieldset>

    <h1>Find a CLTIP application:</h1>

    <h2>PIN</h2> <!--I didnt find "first name last name fields so i keep it there-->
    <form action=" findCltipApplication.php" method="get">
        <input type="text" name="PIN" />
        <input type="submit" value="visit" />
        5-digits pin
    </form>
</fieldset>