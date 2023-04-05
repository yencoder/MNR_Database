<!DOCTYPE html>
<html lang="en">
    <head>
        <script src="https://kit.fontawesome.com/c51f44d97a.js" crossorigin="anonymous"></script>
        <?php $page_title = "Ministry of Natural Resources and Forestry"; ?>
        <?php include "../includes/metadata.php" ?>
    </head>
    <body>
        <?php include '../includes/header.php'; ?>
        <div class="content">
            <section class="home">
                <h2>About Us</h2>
                <section class="aboutUs">
                    <div class="mftipInfo">
                        <h4>Managed Forest Tax Incentive Program (MFTIP)</h4>
                        <p>The Managed Forest Tax Incentive Program (MFTIP) is a voluntary program available to landowners who own four hectares or more of forest land, and who agree to prepare and follow a Managed Forest Plan for their property. Under the MFTIP, participating landowners have their property reassessed and classified as Managed Forest and taxed at 25 percent of the municipal tax rate set for residential properties. To participate in the MFTIP, landowners must agree to certain conditions including preparing and following a managed forest plan for their forest. The plan must be approved by an individual certified by the Ministry of Natural Resources (MNR) as a Managed Forest Plan Approver. The plan improves the owner's knowledge of the forest and increases the owner's participation in managing the forest. In turn, this helps to encourage the stewardship of Ontario's private forests.</p>
                    </div>
                    <div class="cltipInfo">
                        <h4>Conservation Tax Incentive Program (CLTIP)</h4>
                        <p>Ontario has a rich and varied natural heritage. Many of Ontario's most significant natural areas are privately owned. As the pressures on such areas increase, it is important to encourage private stewardship of the province's outstanding natural features. The Conservation Land Tax Incentive Program (CLTIP) is designed to recognize, encourage and support the long-term private stewardship of Ontario's provincially significant conservation lands by providing property tax relief to those landowners who agree to protect the natural heritage values of their property. The current tax relief offered is 100 % tax exemption on that eligible portion of the property.</p>
                    </div>
                </section>
                <?php
                  // session check for user information
                  if (!isset($_SESSION['rollNumber'])) {?>
                    <a href="landowner-login.php"><button id="public" name="public">Public Login <i class="fas fa-pencil-alt"></i></button></a>
                    <a href="employee-login.php"><button id="public" name="public">Employee Login <i class="fas fa-pencil-alt"></i></button></a>
                    <a href="mfpa_login.php"><button id="public" name="public">MFPA Login<i class="fas fa-pencil-alt"></i></button></a>
                    <a href="MFPA_exam_registration.php"><button id="public" name="public">MFPA Exam <br> Registration<i class="fas fa-pencil-alt"></i></button></a>
                <?php }?>
            </section>
        </div>
        <?php include "../includes/footer.php" ?>
    </body>
</html>