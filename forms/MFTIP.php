<?php
require_once('../includes/library.php');

$pdo = connectDB();


$email = 'fnln@123.com'; //for debug

$query = "SELECT CONCAT(firstName, ' ', lastName) AS full_name FROM Users WHERE email = ?";
$stmt = $pdo->prepare($query);
$stmt->execute([$email]);
$row = $stmt->fetch();
$name = $row['full_name'];

$query = "SELECT current_MFTIP_plan FROM Parcel WHERE Current_owner= (SELECT userId FROM Users WHERE email = ?)";
$stmt = $pdo->prepare($query);
$stmt->execute([$email]);
$row = $stmt->fetch();
$planID = $row['current_MFTIP_plan'];

$query = "SELECT ARN FROM Parcel WHERE Current_owner= (SELECT userId FROM Users WHERE email = ?)";
$stmt = $pdo->prepare($query);
$stmt->execute([$email]);
$row = $stmt->fetch();
$arn = $row['ARN'];

$query = "SELECT Current_eligible_area FROM Parcel WHERE ARN=?";
$stmt = $pdo->prepare($query);
$stmt->execute([$arn]);
$row = $stmt->fetch();
$cea = $row['Current_eligible_area'];


$query = "SELECT MPAC_total_area FROM Parcel_annual_record WHERE ARN= ?";
$stmt = $pdo->prepare($query);
$stmt->execute([$arn]);
$row = $stmt->fetch();
$mta = $row['MPAC_total_area'];

?>


<!DOCTYPE html>
<html lang="en">

<head>
    <?php $page_title = "MFTIP home"; ?>
    <?php include "../includes/metadata.php" ?>
    <link rel="stylesheet" href="../styles/master.css" />
</head>
<div class="titlebox">
    <h1 class="page-title"> Managed Forest Tax IncentiveProgram</h1>
</div>

<h1 class="page-title">5-Year Progress Report</h1>
<hr>
<p style="max-width: 80%;">A 5-year Progress Report for your Managed Forest Plan is due by July 31st of the fifth year
    of your
    plan. Progress reports are due in 2022 for plans that began Jan 1, 2018. A copy of this form will be
    emailed to you; please keep it for your records. If your Progress Report is not submitted by July 31,
    2022, the properties identified below will be removed from the Managed Forest Tax Incentive
    Program.</p>

<hr>



<div class="titlebox">
    <h1 class="page-title"> Landowner Information</h1>
</div>

<html>

<head>
    <title>Update Contact Information</title>
</head>

<body>
    <div>
        <h2>Contact Information</h2>
        <p>
            <span style="font-weight: bold;">Primary contact:</span><br>
            <?php echo $name; ?><br>
            <?php echo $email; ?>
        </p>
    </div>
    <div>
        <h2>Update Mailing Address</h2>
        <p>
            <label for="mailing-switch">Do you need to update your mailing address?</label><br>
            <input type="checkbox" id="mailing-switch" name="mailing-switch" value="1">
            <label for="mailing-switch">Yes</label>
            <input type="checkbox" id="mailing-switch" name="mailing-switch" value="0">
            <label for="mailing-switch">No</label>
        </p>
    </div>
    <div>
        <h2>Update Email Address</h2>
        <p>
            <label for="email-switch">Do you need to update your email address?</label><br>
            <input type="checkbox" id="email-switch" name="email-switch" value="1">
            <label for="email-switch">Yes</label>
            <input type="checkbox" id="email-switch" name="email-switch" value="0">
            <label for="email-switch">No</label>
        </p>
    </div>
</body>
<div class="titlebox">
    <h1 class="page-title">Managed Forest Plan Information</h1>
</div>

<span style="font-weight: bold;">Plan Number:</span>
<?php echo $planID ?>
<table style="border-collapse: collapse; width: 100%;">
    <tr>
        <th
            style="border: 1px solid #ddd; background-color: #f2f2f2; font-weight: bold; min-width: 150px; padding: 8px; text-align: left;">
            Assessment Roll Number</th>
        <th
            style="border: 1px solid #ddd; background-color: #f2f2f2; font-weight: bold; width: 20%; padding: 8px; text-align: left;">
            Managed Forest Area (acres)</th>
        <th
            style="border: 1px solid #ddd; background-color: #f2f2f2; font-weight: bold; width: 30%; padding: 8px; text-align: left;">
            MPAC Total Property Area (acres)</th>
    </tr>
    <tr>
        <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">
            <?php echo $arn ?>
        </td>
        <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">
            <?php echo $cea ?>
        </td>
        <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">
            <?php echo $mta ?>
        </td>
    </tr>

</table>
<br>
<br>
<h1 class="page-title">Summary</h1>
<hr>
<p>I have made some progress in carrying out the management activities that I planned for this property
    (between 25 and 75% of activities accomplished)</p>
<br>
<br>
<h1 class="page-title">Overview of Activities</h1>
Select all activities which you have carried out on the property(ies) during the time the land was enrolled
under the current plan (since Jan 1, 2018). Further details about these activities can be provided in the
'Detailed Report of Activities' below.
<hr>
Harvesting commercially (i.e., for sale)
Tree removal for forest health (e.g. thinning, disease management)
<br>
<br>
<h1 class="page-title">Detailed Report of Activities</h1>
Please report on activities completed during the time the land was enrolled under the current plan (since Jan
1, 2018). Click '+' to add new rows.
<hr>+
Year
2019
Compartment
5a
Activity
Recolte des arbres
Comments/details of activity
Ash mort
<br>
<br>
<h1 class="page-title">Owner Declaration</h1>
<hr>I certify that the above information is true; that I have managed the land in accordance with the approved
Managed Forest Plan; and that all activities were carried out according to good forestry practices as defined in
the Forestry Act.
<br>
<br>
<h1 class="page-title">First and last name</h1>
(Typed name indicates electronic signature)
<hr>
<form action="" method="get">
    <label for="arn">Assessment Roll Number:</label>
    <input type="text" id="arn" name="arn">
    <button type="submit">Submit</button>
</form>

<br>
<br>
<br>
Notice of Collection: The Ministry of Natural Resources and Forestry is collecting information in this form, under the
authority of
Section 9 of Ontario Regulation 282/98 of the Assessment Act, for the purposes of administering the Managed Forest Tax
Incentive
Program including communications with you and the Municipal Property Assessment Corporation. Information that you submit
as
part of this form may be shared with other areas of the Ministry of Natural Resources and Forestry for statistical,
research, reporting
or compliance purposes. Any personal information you provide will be protected in accordance with the Freedom of
Information and
Protection of Privacy Act. This form is powered by SimpleSurvey, a division of OutSideSoft Solutions Inc., Quebec,
Canada. For
information about the security and privacy of your data, visit https://simplesurvey.com/faq/.Questions regarding the use
of your
personal information should be directed to the MFTIP Administrator, Integration Branch, 300 Water Street, 5S,
Peterborough, ON
K9J 8M5 or MFTIP@ontario.ca.

</html>