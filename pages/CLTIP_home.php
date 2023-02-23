<?php
include '../includes/library.php';



function search()
{
    $rNumber = $_GET["rNumber"]; //receiving name field value in $name variable  
    echo "rl number is";
    echo $rNumber;
}
?>


<fieldset style="width:40%">

    <h1>Search</h1>

    <h2>Find property</h2>
    <form action=" search.php" method="get">
        Name: <input type="text" name="rNumber" />
        <input type="submit" value="visit" />
    </form>
    15-digits roll number
</fieldset>