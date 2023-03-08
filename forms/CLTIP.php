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
<h1 class="page-title"> Conservation Land Tax Incentive Program</h1>
<h1 class="section-title">2023 Application</h1>

<br>
2023 application PIN:<input type="text" id="PIN" name="PIN">
<h1> Property Information</h1>


Assesment Roll Number:<input type="text" id="roll" name="roll">
<br>
<h1 class="section-title">Property information</h1>
Eligible Area:<input type="number" id="eArea" name="eArea">
<br>
<br>
Total area:<input type="number" id="tArea" name="tArea">
<br>
<br>
<label for="featureType">Eligible Feature Type:</label>
<select name="featureType" id="featureType">
    <option value="PSW">PSW</option>
    <option value="HNF">HNF</option>
    <option value="AES">AES</option>
    <option value="ALS">ALS</option>
    <option value="ESH">ESH</option>
</select>



<h1 class="section-title">Owner Declaration - Refer to CLTIP Policy (below) before filling out this section</h1>
<br>
<br>
<strong>*Types of Eligible Conservation Lands:</strong>
PSW: Provincially Significant Wetlands
HNE: Niagara Escarpment Natural Area
AES: Provincially Significant Earth Science Area of Natural & Scientific Interest (ANSI)
ALS: Provincially Significant Life Science Area of Natural & Scientific Interest (ANSI)
ESH: Habitat of certain Endangered Species

<br>
<br>
<br>
<br>
<p>The application daealine for the 2023 tax year was July 31st,2022.
    Landowners who missed the dealine can submit a Request for Reconsideration,
    allowing the application to be submitted late, if there are mitigating circumstances
    that caused them to miss the deadline. Please explain why the deadline was missed below:</p>
<p style=color:red>Note: You must compete the declaration and reason for missed deadline to submit your application
</p>
<input type="text" style="height: 200; width:600;" id="late_reason" name="late_reason">
<br>
<br>
<h1> Owner Declaration - Refer to CLTIP Policy(below) before fiiling out this section</h1>
<strong>I certify and agree that, for the property(ies) described above:</strong>
<br>
<input type="checkbox" id="nature" name="nature" value="nature">
<label for="nature"> Property owners will not undertake any activities that degrade, destroy or result in the loss
    of the natural heritage feature;</label><br>
<input type="checkbox" id="enter" name="enter" value="enter">
<label for="enter"> If necessary, all owners authorize representatives of the Ministry of Northern Development,
    Mines, Natural Resources and Forestry to enter onto the property)ies) to confirm that the land participating in
    the CLTIP is being maintained as conservation land; site vist will be confirmed with owners;</label><br>
<input type="checkbox" id="authentation" name="authentation" value="authentation">
<label for="authentation"> I am authorized to agree to the terms set out in this form on behalf of all
    owners.</label><br>
<br>
<br>
Name(Typed name indicates electronic signature):
<br>
<input type="text" id="signatureName" name="signatureName">
<br>
If signing on behalf of an estate or organization, indicate title:
<br>
<input type="text" id="organizationSignature" name="organizationSignature">
<h2>Notice of collection:</h2>
<p>
    Personal information on this application is collected under the authority of Section 25 of Ontario Regulation
    282/98 of the assesment Act, and will be used to administer the CLTIP, including database administration,
    program management, for aduit/enforcement purposes, and program-related surveys and communications with you
    and
    with the Municipal Property Assesment Corporation. All applications are processed by a service provider
    under
    contract for the purposes of administering The program. Hard copy applications will be forwarded to the
    service
    probider via courier; e-mails containing applications will be forwarded directly to the service provider for
    processing. E-mail is not secure; please do not include sensitive information in you communication. Questions on
    use of this information should be directed to the CLTIP Administor, MNRF 300 water Street, 5 South, Peterborough
    ON K9J 3C7, or 1-800-268-8959.
</p>
<h1 class="paragraph-title">Frequent asked questions</h1>
&#x2022 <a href="InsertFINALforEmailApplications.pdf">Click here for the CLTIP FAQs</a>


<h1 class="paragraph-title">Frequent asked questions</h1>
&#x2022 <a
    href="https://www.ontario.ca/page/conservation-land-tax-incentive-program-policy#:~:text=The%20Conservation%20Land%20Tax%20Incentive%20Program%20(%20CLTIP%20)%20replaced%20the%20Conservation,the%20payment%20of%20property%20tax.">Click
    here for the CLTIP policies</a>

</html>