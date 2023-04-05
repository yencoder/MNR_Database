<?php
session_start();

if (!isset($_SESSION['user_id'])) {
    header("Location: landowner-login.php");
    exit();
}

include '../includes/library.php';
$pdo = connectDB();

$sql = "SELECT * FROM managed_forest_plan_approvers";
$stmt = $pdo->prepare($sql);
$stmt->execute();
$approvers = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Connect with Managed Forest Plan Approvers</title>
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

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        table, th, td {
            border: 1px solid #ddd;
            text-align: left;
            padding: 8px;
        }

        table tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        table tr:hover {
            background-color: #ddd;
        }

        table th {
            background-color: #007bff;
            color: white;
            font-weight: bold;
        }
    </style>
</head>

<body>
    <?php include '../includes/header-landowner.php'; ?>

    <main>
        <section>
            <div class="content-container">
                <h1 class="section-title">Managed Forest Plan Approvers</h1>
                <h1 class="section-title"><p>Below is a list of Managed Forest Plan Approvers and their contact information:</p></h1>
                <table>
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Office Address</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($approvers as $approver) : ?>
                            <tr>
                                <td><?php echo htmlspecialchars($approver['name']); ?></td>
                                <td><?php echo htmlspecialchars($approver['email']); ?></td>
                                <td><?php echo htmlspecialchars($approver['phone_number']); ?></td>
                                <td><?php echo nl2br(htmlspecialchars($approver['office_address'])); ?></td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </section>
    </main>

    <?php include '../includes/footer.php'; ?>
</body>

</html>
