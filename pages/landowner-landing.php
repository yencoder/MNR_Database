<?php
session_start();

if (!isset($_SESSION['user_id'])) {
    header("Location: landowner-login.php");
    exit();
}

include '../includes/library.php';
$pdo = connectDB();

$landowner_arn = $_SESSION['user_id'];

$sql = "SELECT * FROM landowners WHERE ARN = :landowner_arn";
$stmt = $pdo->prepare($sql);
$stmt->execute([':landowner_arn' => $landowner_arn]);
$landowner = $stmt->fetch(PDO::FETCH_ASSOC);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Landowner Landing Page</title>
    <?php include "../includes/metadata.php"; ?>
    <link rel="stylesheet" href="styles/master.css" />
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .content-container {
            background-color: white;
            padding: 20px;
            margin: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .connect-button,
        .download-button {
            display: inline-block;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 4px;
            font-weight: bold;
            margin-top: 20px;
        }

        .connect-button:hover,
        .download-button:hover {
            background-color: #0056b3;
        }

        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
        }

        .container {
            width: 80%;
            margin: auto;
            overflow: hidden;
        }


        section {
            padding: 20px;
            margin-top: 20px;
        }

        section h2 {
            font-weight: bold;
            font-size: 24px;
        }

        .connect-button {
            display: inline-block;
            background-color: #e8491d;
            color: white;
            padding: 10px 20px;
            font-size: 18px;
            border: none;
            cursor: pointer;
            margin-top: 20px;
        }

        .connect-button:hover {
            background-color: #cc3a1a;
        }
        .mfpa-con{
            font-size: x-large;
        }
    </style>

</head>

<body>
    <?php include '../includes/header_mfpa.php'; ?>

    <main>
        <section>
            <div class="content-container">
                <div class="container">
                    <h1 class="section-title">Welcome, <?php echo htmlspecialchars($landowner['first_name']); ?></h1>

                    <div class="landowner-info">
                        <h2>Your Property Information:</h2>
                        <p><?php echo nl2br(htmlspecialchars($landowner['property_info'])); ?></p>
                        <br>
                        <h2>Plan Number:</h2>
                        <p><?php echo htmlspecialchars($landowner['plan_number']); ?></p>
                        <br>
                        <h2>Approved By:</h2>
                        <p><?php echo htmlspecialchars($landowner['approved_by']); ?></p>
                        <br>
                        <h2>Plan Start Date:</h2>
                        <p><?php echo htmlspecialchars($landowner['plan_start_date']); ?></p>
                        <br>
                        <h2>Plan End Date:</h2>
                        <p><?php echo htmlspecialchars($landowner['plan_end_date']); ?></p>
                        <br>
                        <h2>Progress Report Due:</h2>
                        <p><?php echo htmlspecialchars($landowner['progress_report_due']); ?></p>
                        <br>
                        <h2>Renewal Plan Due:</h2>
                        <p><?php echo htmlspecialchars($landowner['renewal_plan_due']); ?></p>
                        <br>
                        <h2>Status for 2020 Tax Year:</h2>
                        <p><?php echo htmlspecialchars($landowner['status_for_tax_year']); ?></p>
                    </div>
                    <br>
                    <div class="buttons">
                    <h1 class="mfpa-con">Planning Template form:</h1>
                        <a href="../forms/Planning-Template.pdf" target="_blank" class="download-button">Download Plan Form (PDF)</a>
                    </div>
                    <br>
                    <div>
                        <h1 class="mfpa-con">Connect with Managed Forest Plan Approvers to help you through the application process:</h1>
                    <button class="connect-button" onclick="location.href='connect-mfpa.php'">Connect with Managed Forest Plan Approvers</button>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <?php include '../includes/footer.php'; ?>
</body>

</html>