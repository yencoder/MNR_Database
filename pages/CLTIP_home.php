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
    $query = "SELECT email, `password` FROM `users` WHERE email=?";
    $stmt = $pdo->prepare($query);
    $stmt->execute([$email]);
    $results = $stmt->fetch();
    // check email field
    if (empty($email)) {
        $errors['emptyEmail'] = true;
    } else {
        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $errors['incorrectEmail'] = true;
        }
        // if email does not exist in the database
        elseif (!$results) {
            $errors['emailDoesNotExist'] = true;
        }
        // if email exists in the database
        else {
            // check password field
            $upperCase = preg_match('@[A-Z]@', $password);
            $lowerCase = preg_match('@[a-z]@', $password);
            $numberCase = preg_match('@[0-9]@', $password);
            $specialCase = preg_match('@[^\w]@', $password);
            if (empty($password)) {
                $errors['emptyPassword'] = true;
            } else {
                // if same as old password
                if (password_verify($password, $results['password'])) {
                    $errors['oldPassword'] = true;
                } elseif (!$upperCase || !$lowerCase || !$numberCase || !$specialCase || strlen($password) < 8) {
                    if (!$upperCase) {
                        $errors['passwordCharsUpper'] = true;
                    }
                    if (!$lowerCase) {
                        $errors['passwordCharsLower'] = true;
                    }
                    if (!$numberCase) {
                        $errors['passwordCharsNumber'] = true;
                    }
                    if (!$specialCase) {
                        $errors['passwordCharsSpecial'] = true;
                    }
                    if (!strlen($password) < 8) {
                        $errors['passwordLength'] = true;
                    }
                }
            }
            // check confirm password field
            if ($password != $confirmPassword) {
                $errors['confirmPassword'] = true;
            }
        }
    }
    // error verification
    if (!sizeof($errors)) {
        // insert creditionals into the database
        $password = password_hash($password, PASSWORD_DEFAULT);
        $query = "UPDATE users SET `password` = ? WHERE email = ?";
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
    <?php $page_title = "CLTIP home"; ?>
    <?php include "../includes/metadata.php" ?>
    <link rel="stylesheet" href="styles/master.css" />
</head>

<body>
    <?php include '../includes/header.php'; ?>
    <section class="section-box">
        <h1 class="section-title">Search</h1>

        <h2>Find property</h2>
        <form method="get">
            Name: <input type="text" name="rNumber" />
            <input type="submit" value="visit" />
        </form>
        <p>15-digits roll number</p>
    </section>

    <section class="section-box">
        <h1 class="section-title">Find a landowner:</h1>

        <h2>Name</h2> <!--I didn't find "first name last name fields so I kept it there-->
        <form method="get">
            Name: <input type="text" name="landlordName" />
            <input type="submit" value="visit" />

            Business/Organization Name: <input type="text" name="businessName" />
            <input type="submit" value="visit" />
        </form>
    </section>

    <section class="section-box">
        <h1 class="section-title">Find a CLTIP application:</h1>

        <h2>PIN</h2> <!--I didn't find "first name last name fields so I kept it there-->
        <form method="get">
            <input type="text" name="PIN" />
            <input type="submit" value="visit" />
            <p>5-digits pin</p>
        </form>
    </section>

    <section class="section-box">
        <h1 class="section-title">Search Results:</h1>
        <?php
        // check if any search form has been submitted
        if (isset($_GET['rNumber']) || isset($_GET['landlordName']) || isset($_GET['businessName']) || isset($_GET['PIN'])) {
            $pdo = connectDB();

            // perform search query based on submitted form data
            if (isset($_GET['rNumber']) && !empty($_GET['rNumber'])) {
                $searchTerm = trim(filter_var($_GET['rNumber'], FILTER_SANITIZE_STRING));
                $query = "SELECT * FROM properties WHERE rNumber=?";
                $stmt = $pdo->prepare($query);
                $stmt->execute([$searchTerm]);
            } else if (isset($_GET['landlordName']) && !empty($_GET['landlordName'])) {
                $searchTerm = trim(filter_var($_GET['landlordName'], FILTER_SANITIZE_STRING));
                $query = "SELECT * FROM landowners WHERE name=?";
                $stmt = $pdo->prepare($query);
                $stmt->execute([$searchTerm]);
            } else if (isset($_GET['businessName']) && !empty($_GET['businessName'])) {
                $searchTerm = trim(filter_var($_GET['businessName'], FILTER_SANITIZE_STRING));
                $query = "SELECT * FROM landowners WHERE businessName=?";
                $stmt = $pdo->prepare($query);
                $stmt->execute([$searchTerm]);
            } else if (isset($_GET['PIN']) && !empty($_GET['PIN'])) {
                $searchTerm = trim(filter_var($_GET['PIN'], FILTER_SANITIZE_STRING));
                $query = "SELECT * FROM cltip_applications WHERE PIN=?";
                $stmt = $pdo->prepare($query);
                $stmt->execute([$searchTerm]);
            }

            // display search results in table
            $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
            if (count($results) > 0) {
                echo '<table>';
                foreach ($results as $row) {
                    echo '<tr>';
                    foreach ($row as $value) {
                        echo '<td>' . $value . '</td>';
                    }
                    echo '</tr>';
                }
                echo '</table>';
            } else {
                echo '<p>No results found.</p>';
            }
        }
        ?>
    </section>


    <section class="section-box">
        <h1 class="section-title">Work process:</h1>
        <div class="button-container">
            <a href="#" class="button">MPAC list</a>
            <a href="#" class="button">Requests for Reconsideration</a>
            <a href="#" class="button">Mailout</a>
            <a href="#" class="button">Call log</a>
            <a href="#" class="button">Annual eligible area updates</a>
        </div>
    </section>
    <section class="section-box">
        <h1 class="section-title">Records:</h1>
        <div class="button-container">
            <a href="#" class="button">Properties</a>
            <a href="#" class="button">CLTIP applications</a>
            <a href="#" class="button">CCL applications</a>
            <a href="#" class="button">Landowners</a>
            <a href="#" class="button">More...</a>
        </div>
    </section>
    <?php include "../includes/footer.php" ?>

</html>