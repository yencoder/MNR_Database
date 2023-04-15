<?php
include '../includes/library.php';
$pdo = connectDB();
$message = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = trim(filter_var($_POST['email'] ?? null, FILTER_SANITIZE_EMAIL));
    $password = trim($_POST['password'] ?? null);

    $sql = "SELECT * FROM exam_candidates WHERE email = :email";
    $stmt = $pdo->prepare($sql);
    $stmt->execute([':email' => $email]);

    if ($stmt->rowCount() > 0) {
        $user = $stmt->fetch(PDO::FETCH_ASSOC);
        if (password_verify($password, $user['password'])) {
            // Login successful, create a session and redirect to a protected page
            session_start();
            $_SESSION['user_id'] = $user['id'];
            $_SESSION['email'] = $user['email'];
            header('Location: mfpa_landing.php');
            exit;
        } else {
            // Incorrect password
            $message = "Invalid email or password.";
        }
    } else {
        // User not found
        $message = "Invalid email or password.";
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <?php $page_title = "Login"; ?>
    <?php include "../includes/metadata.php"; ?>
    <link rel="stylesheet" href="styles/master.css" />
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet">
    <style>
        /* Styles from the registration page */
        /* Make the footer stick to the bottom */
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

        input,
        label {
            width: 25em;
            height: 1.8em;
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

        #mfpaReg {
            align-items: center;
            background-color: whitesmoke;
            padding: 5em;
            border-radius: 2;
        }

        #regbutton {
            display: inline-block;
            padding: 0.8em 2em;
            border-radius: 30px;
            font-size: 1.2em;
            font-weight: bold;
            text-align: center;
            text-decoration: none;
            color: #fff;
            background-color: green;
            box-shadow: 0 3px 5px rgba(0, 0, 0, 0.3);
            transition: all 0.3s ease-in-out;
            cursor: pointer;
            outline: none;
            width: max-content;
        }

        #regbutton:hover,
        #regbutton:focus {
            transform: translateY(-2px);
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.4);
            background-color: darkgreen;
        }

        #regbutton {
            font-size: 16px;
            padding: 8px 24px;
        }

        /* Add styles for the login page */
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
</head>

<body>
    <?php include '../includes/header-landowner.php'; ?>

    <main>
        <section class="login-form">
            <h2>Login</h2>
            <form method="POST">
                <label for="email">Email:</label>
                <input type="email" name="email" id="email" required /><br />

                <label for="password">Password:</label>
                <input type="password" name="password" id="password" required /><br />

                <input type="submit" value="Login" id="regbutton" />
            </form>
            <?php if (!empty($message)) : ?>
                <div class="error">
                    <?php echo $message; ?>
                </div>
            <?php endif; ?>
        </section>
    </main>

    <?php include "../includes/footer.php"; ?>
</body>

</html>