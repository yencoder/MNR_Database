<?php
// create array for errors
$errors = array();
// get and sanitize each input
$email = trim(filter_var($_POST['email'] ?? null, FILTER_SANITIZE_EMAIL));
$ARN = trim(filter_var($_POST['ARN'] ?? null, FILTER_SANITIZE_EMAIL));
$pass = trim(filter_var($_POST['password'] ?? null, FILTER_SANITIZE_STRING));
include '../includes/library.php';
$pdo = connectDB();
$message = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $identifier = trim($_POST['identifier'] ?? null);
    $password = trim($_POST['password'] ?? null);
    $remember_me = isset($_POST['remember_me']);

    $sql = "SELECT * FROM landowners WHERE email = :email OR ARN = :ARN";

    $stmt = $pdo->prepare($sql);
    $stmt->execute([':email' => $email, ':ARN' => $ARN]);

    if ($stmt->rowCount() > 0) {
        $user = $stmt->fetch(PDO::FETCH_ASSOC);
        if ($password == $user['password']) {
            // Login successful, create a session
            session_start();
            $_SESSION['user_id'] = $user['ARN'];
            $_SESSION['email'] = $user['email'];

            // Set a cookie for "Remember me" functionality
            // After checking if the password is correct, before creating a session
            if (isset($_POST['remember_me'])) {
                setcookie('email', $email, time() + (86400 * 30), "/"); // 86400 = 1 day
                setcookie('ARN', $ARN, time() + (86400 * 30), "/");
                setcookie('password', $user['password'], time() + (86400 * 30), "/");
            } else {
                // Delete the cookies if the user didn't check the "Remember Me" box
                setcookie('email', '', time() - 3600, "/");
                setcookie('ARN', '', time() - 3600, "/");
                setcookie('password', '', time() - 3600, "/");
            }


            // Redirect to the landowner home page
            header('Location: landowner-landing.php');
            exit;
        } else {
            // Incorrect password
            $message = "Invalid ARN/email or password.";
        }
    } else {
        // User not found
        $message = "Invalid ARN/email or password.";
    }
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <?php $page_title = "Landowner Login"; ?>
    <?php include "../includes/metadata.php"; ?>
    <link rel="stylesheet" href="styles/master.css" />
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet">
    <!-- Add your custom CSS here -->

</head>

<body>
    <?php include '../includes/header_mfpa.php'; ?>
    <div class="page-container">
        <div class="main-content">
            <main>
                <section class="login-form">
                    <h2>Landowner Login</h2>
                    <form method="POST">
                        <h1 class="section-title">Login through either Email or password </h1>
                        <label for="email">Email</label>
                        <input type="text" name="email" id="email" value="<?php echo isset($_COOKIE['email']) ? $_COOKIE['email'] : ''; ?>" /><br />
                        <h1>OR</h1>
                        <label for="ARN"> ARN </label>
                        <input type="text" name="ARN" id="ARN" value="<?php echo isset($_COOKIE['ARN']) ? $_COOKIE['ARN'] : ''; ?>" /><br />

                        <label for="password">Password</label>
                        <input type="password" name="password" id="password" value="<?php echo isset($_COOKIE['password']) ? $_COOKIE['password'] : ''; ?>" /><br />
                        <!-- <label><input type="checkbox" name="remember_me" id="remember_me" /> Remember me<br /></label><br /> -->

                        <input type="submit" value="Login" id="regbutton" />
                        <div>
                            <span class="psw"><a href="forgotPassword.php">Forgot password</a></span>
                        </div>
                    </form>
                    <?php if (!empty($message)) : ?>
                        <div class="error">
                            <?php echo $message; ?>
                        </div>
                    <?php endif; ?>
                </section>
            </main>
        </div>
    </div>
</body>

</html>


<style>
    body {
        display: flex;
        flex-direction: column;
    }

    main {
        flex: 1;
    }

    /* Style the main section */
    main section {
        margin: 30px auto;
        background-color: #ffffff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 50%;
        align-items: center;
    }

    p {
        color: #666666;
        font-size: 16px;
        line-height: 1.5;
        margin-bottom: 20px;
    }

    form {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    label,
    input {
        width: 70%;
        margin-bottom: 20px;
        height: 50%;
    }

    label {
        font-size: 16px;
        font-weight: bold;
        color: #333333;
        display: inline-block;
        margin-bottom: 2px;
    }

    input {
        font-size: 14px;
        padding: 5px;
        border: 1px solid #cccccc;
        border-radius: 3px;
        height: 50%;
    }

    input[type="submit"],
    #regbutton {
        width: 10em;
        background-color: #1a1a1a;
        color: #ffffff;
        padding: 10px;
        font-size: 16px;
        cursor: pointer;
        border: none;
        border-radius: 5px;
        transition: background-color 0.2s;
        width: 5em;
    }

    input[type="submit"]:hover {
        background-color: #333333;
    }

    /* Style the success and error messages */
    .success,
    .error {
        padding: 10px;
        margin-bottom: 20px;
        font-size: 16px;
        border-radius: 5px;
    }

    .success {
        color: #155724;
        background-color: #d4edda;
        border: 1px solid #c3e6cb;
    }

    .error {
        color: #721c24;
        background-color: #f8d7da;
        border: 1px solid #f5c6cb;
    }

    h2 {
        text-align: center;
        font-size: 24px;
        font-weight: bold;
        margin-bottom: 30px;
    }

    .login-form {
        width: 50%;
        margin: 0 auto;
        background-color: #ffffff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .login-form h2 {
        font-size: 24px;
        font-weight: bold;
        margin-bottom: 30px;
    }
</style>