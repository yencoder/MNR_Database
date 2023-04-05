<?php
// Connect to the database
include '../includes/library.php';
$pdo = connectDB();
$success = false;
$message = '';

// Check if the form is submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Get and sanitize input values
    $first_name = trim(filter_var($_POST['first_name'] ?? null, FILTER_SANITIZE_STRING));
    $last_name = trim(filter_var($_POST['last_name'] ?? null, FILTER_SANITIZE_STRING));
    $email = trim(filter_var($_POST['email'] ?? null, FILTER_SANITIZE_EMAIL));
    $phone = trim(filter_var($_POST['phone'] ?? null, FILTER_SANITIZE_STRING));
    $address = trim(filter_var($_POST['address'] ?? null, FILTER_SANITIZE_STRING));
    $sin = trim(filter_var($_POST['sin'] ?? null, FILTER_SANITIZE_STRING));
    $password = trim($_POST['password'] ?? null);

    // Hash the password
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);

    // Insert the data into the database
    // $sql = "INSERT INTO exam_candidates (first_name, last_name, email, phone, sin, password) VALUES (:first_name, :last_name, :email, :phone, :sin, :hashed_password)";
    $sql = "INSERT INTO exam_candidates (first_name, last_name, email, phone, sin, password, address) VALUES (:first_name, :last_name, :email, :phone, :sin, :hashed_password, :address)";
    $stmt = $pdo->prepare($sql);

    try {
        $stmt->execute([
            ':first_name' => $first_name,
            ':last_name' => $last_name,
            ':email' => $email,
            ':phone' => $phone,
            ':sin' => $sin,
            ':hashed_password' => $hashed_password,
            ':address' => $address,
        ]);
        // Registration is successful
        $success = true;
        $message = "Registration successful!";
        // Redirect to another page if desired
        // header('Location: success_page.php');
    } catch (PDOException $e) {
        // Check for constraint violation error codes
        if ($e->errorInfo[1] === 1062) {
            // Handle duplicate entry error
            $message = "Error: A candidate with the provided SIN, email, or phone number already exists.";
        } else {
            // Handle other errors
            $message = "Error: An error occurred while processing your request.";
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <?php $page_title = "Exam Registration"; ?>
    <?php include "../includes/metadata.php" ?>
    <link rel="stylesheet" href="styles/master.css" />
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet">
    <style>
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

        label, input {
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

        input,label{
            width: 25em;
            height: 1.8em;
        }


        input[type="submit"],#regbutton {
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
        .success, .error {
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
        #mfpaReg{
            align-items: center;
            background-color: whitesmoke;
            padding: 5em;
            border-radius: 2;
        }

        #regbutton{
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

        #regbutton:hover,#regbutton:focus{
            transform: translateY(-2px);
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.4);
  background-color: darkgreen;
        }
        #regbutton {
    font-size: 16px;
    padding: 8px 24px;
  }



</style>
</head>

<body>
    <?php include '../includes/header.php'; ?>
        <div id="mfpaReg">
        <h1 class="section-title">Managed Force Plan Approver's Exam Registration</h1>
        
        <h2>About Managed Force Plan Approvers</h2>
        <p>
            Managed Force Plan Approvers are responsible for reviewing and approving Managed Force Plans for organizations. These plans outline the strategies, policies, and procedures that organizations will use to manage their workforce and ensure operational efficiency. The role of a Managed Force Plan Approver is to ensure that the proposed plans align with industry standards, best practices, and regulatory requirements.
        </p>
        <p>
            To become a certified Managed Force Plan Approver, candidates must pass an exam that tests their knowledge of workforce planning, human resource management, and relevant laws and regulations. Successful candidates will demonstrate a deep understanding of workforce planning principles, the ability to analyze and evaluate proposed plans, and strong communication skills to provide constructive feedback to organizations.
        </p>
        <p>
            Upon passing the exam, candidates will receive a certification that validates their expertise in Managed Force Plan approval. This certification serves as a valuable credential for professionals seeking career advancement in the field of workforce planning and human resources management.
        </p>
        
        <h2>Register for the Exam</h2>
        <form id="mfpaform" method="POST">
            <label for="first_name">First Name:</label>
            <input type="text" name="first_name" id="first_name" required /><br />

            <label for="last_name">Last Name:</label>
            <input type="text" name="last_name" id="last_name" required /><br />

            <label for="email">Email:</label>
            <input type="email" name="email" id="email" required /><br />

            <label for="phone">Phone:</label>
            <input type="text" name="phone" id="phone" required /><br />
            
            <label for="address">Address:</label>
            <input type="text" name="address" id="address" required /><br />


            <label for="sin">SIN:</label>
            <input type="text" name="sin" id="sin" required /><br />

            <label for="password">Password:</label>
            <input type="password" name="password" id="password" required /><br />

            <input type="submit" value="Register" id="regbutton" />
        </form>
        <!-- Display the success or error message -->
<?php if (!empty($message)): ?>
    <div class="<?php echo $success ? 'success' : 'error'; ?>">
        <?php echo $message; ?>
    </div>
    </div>
<?php endif; ?>

    <?php include "../includes/footer.php" ?>
    
</body>

</html>
