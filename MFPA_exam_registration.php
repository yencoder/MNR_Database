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
    $sin = trim(filter_var($_POST['sin'] ?? null, FILTER_SANITIZE_STRING));
    $password = trim($_POST['password'] ?? null);

    // Hash the password
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);

    // Insert the data into the database
    $sql = "INSERT INTO exam_candidates (first_name, last_name, email, phone, sin, password) VALUES (:first_name, :last_name, :email, :phone, :sin, :hashed_password)";
    $stmt = $pdo->prepare($sql);

    try {
        $stmt->execute([
            ':first_name' => $first_name,
            ':last_name' => $last_name,
            ':email' => $email,
            ':phone' => $phone,
            ':sin' => $sin,
            ':hashed_password' => $hashed_password,
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
</head>

<body>
    <?php include '../includes/header.php'; ?>
    <section class="section-box">
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
        <form method="POST">
            <label for="first_name">First Name:</label>
            <input type="text" name="first_name" id="first_name" required /><br />

            <label for="last_name">Last Name:</label>
            <input type="text" name="last_name" id="last_name" required /><br />

            <label for="email">Email:</label>
            <input type="email" name="email" id="email" required /><br />

            <label for="phone">Phone:</label>
            <input type="text" name="phone" id="phone" required /><br />

            <label for="sin">SIN:</label>
            <input type="text" name="sin" id="sin" required /><br />

            <label for="password">Password:</label>
            <input type="password" name="password" id="password" required /><br />

            <input type="submit" value="Register" />
        </form>
        <!-- Display the success or error message -->
<?php if (!empty($message)): ?>
    <div class="<?php echo $success ? 'success' : 'error'; ?>">
        <?php echo $message; ?>
    </div>
<?php endif; ?>

    </section>
    <?php include "../includes/footer.php" ?>
    
</body>

</html>
