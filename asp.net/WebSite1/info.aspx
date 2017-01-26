<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Info.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>
<head>
    <meta name="description" content="Personal website of Johnny Appleseed">
    <meta name="keywords" content="CV,Curriculum,Vitae,Johnny,Appleseed">
    <meta charset="UTF-8">
    <title>O stronie</title>
    <link rel = "stylesheet" type = "text/css" href = "Styles/main.css"/>
    <link rel = "stylesheet" type = "text/css" href = "Styles/login.css"/>
    <link rel = "stylesheet" type = "text/css" href = "Styles/personal.css"/>
    <script type="text/javascript" src="Functions/personal.js"></script>
</head>
<body onload="checkIfLogged()">
<section class="container">
    <a name="top"></a>
    <ul class="header">
        <li><a href="login.aspx" id="logowanie"><h3 id="logIn">ZALOGUJ</h3></a></li>
        <li id="CV"><a href="personal.aspx"><h3>CV</h3></a></li>
    </ul>
    <div class="loginContainer">
    </div>
    <!--<img src="../resources/stub.png"/>-->
    <h1 align="center">Jest to strona umożliwiająca stworzenie swojego własnego CV.</h1>
    <h1 align="center">Po zalogowaniu użytkownicy dostają możliwość wprowadzenia</h1>
    <h1 align="center">danych do edytowalnego szablonu.</h1>

    <div class="footerContainer">
        <h3 class="footerText">© 2016 Johnny Appleseed</h3>
        <h3 class="footerText"><a href="Functions/readCookie.php">Cookies</a></h3>
    </div>
</section>
</body>
</html>
