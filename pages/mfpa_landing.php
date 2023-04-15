<!DOCTYPE html>
<html lang="en">

<head>
    <?php $page_title = "MFPA Study Materials"; ?>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <?php include "../includes/metadata.php"; ?>
    <style>
        * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Roboto', sans-serif;
    line-height: 1.6;
}


main {
    padding: 2rem;
    background-color: #f1f1f1;
}

.welcome-message {
    margin-bottom: 2rem;
    text-align: center;
}

.welcome-message h2 {
    font-size: 1.5rem;
    margin-bottom: 1rem;
}

.study-materials {
    text-align: center;
}

.study-materials h2 {
    font-size: 1.5rem;
    margin-bottom: 1rem;
}

.study-materials ul {
    list-style-type: none;
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 1rem;
}

.study-materials li {
    background-color: #f1f1f1;
    padding: 1rem;
    border-radius: 5px;
}

.study-materials li a {
    color: #333;
    text-decoration: none;
}

.study-materials li a:hover {
    color: #4caf50;
}


html {
    height: 100%;
}

body {
    display: flex;
    flex-direction: column;
    min-height: 100%;
}

main {
    flex: 1;
}

#heading{
    font-size: xx-large;
}
#content{
    padding: 1.5em;
}
li{
    padding: 0.5em;
}
#study{
    font-size: x-large;
}
#message{
    padding-top: 2em;
}
    </style>
    <title>Landing Page</title>
</head>

<body>

<?php include '../includes/header_mfpaLanding.php'; ?>   
    <main>
    <h1 id="heading">Welcome to the MFPA Exam Preparation Portal</h1>
    <div id="content"></div>
        <section class="welcome-message">
            <h2>Let's Ace Your Exams!</h2>
            <p>Access a wide range of study materials and resources to help you succeed in your exams. Click on the links below to get started.</p>
        </section>
        <main>
        <section>
            <h2 id="study">Study Materials:</h2>
            <ul>
                <li><a href="#">Workforce Planning</a></li>
                <li><a href="#">Human Resource Management</a></li>
                <li><a href="#">Labor Laws and Regulations</a></li>
                <li><a href="#">Industry Best Practices</a></li>
                <li><a href="#">Strategic Management</a></li>
                <li><a href="#">Communication Skills</a></li>
                <li><a href="#">Analytical Skills</a></li>
                <li><a href="#">Professional Ethics</a></li>
            </ul>
        </section>

        <section id="message">
            <h2>Ready to take the exam?</h2>
        </section>
    </main>
    </main>

    <?php include "../includes/footer.php"; ?>
    <script src="scripts.js"></script>
</body>

</html>
