<%@ Page Language="VB" AutoEventWireup="false" CodeFile="register.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>
<head>
    <meta name="description" content="Personal website of Johnny Appleseed">
    <meta name="keywords" content="CV,Curriculum,Vitae,Johnny,Appleseed">
    <meta charset="UTF-8">
    <title>Rejestracja</title>
    <link rel = "stylesheet" type = "text/css" href = "Styles/main.css"/>
    <link rel = "stylesheet" type = "text/css" href = "Styles/login.css"/>
</head>
<body>
<section class="container">
    <div class="loginContainer">
        <!-- <div class="loginPopover"> -->
        <form class="loginPopover" method="post" action="../functions/form.php" id="form">
            <input id="emailInputForm" name="emailInput" type="email" pattern="[^@]+@[^@]+\.[a-zA-Z]{2,6}" class="loginInput" placeholder="E-mail/Login" required>
            <input name="hasloInput" type="password" class="loginInput" pattern=".{8,20}" placeholder="Hasło(8-20 znaków)" required>
            <input name="imieInput" type="text" class="loginInput" placeholder="Imię" required>
            <input name="nazwiskoInput" type="text" class="loginInput" placeholder="Nazwisko" required>
            <input name="telefonInput" type="text" pattern="\d{3} \d{3} \d{3}" class="loginInput" placeholder="Numer telefonu(### ### ###)" required>
            <input class="submitInput" type="submit" value="ZAREJESTRUJ">
        </form>
        <!-- </div> -->
    </div>
    <div class="footerContainer">
        <a href="personal.aspx"><h3 class="footerText">Strona główna</h3></a>
        <h3 class="footerText">© 2016 Johnny Appleseed</h3>
    </div>
</section>
</body>
</html>
