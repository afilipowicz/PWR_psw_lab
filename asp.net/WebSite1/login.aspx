﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="_Default" %>

<head>
<meta name="description" content="Personal website of Johnny Appleseed">
<meta name="keywords" content="CV,Curriculum,Vitae,Johnny,Appleseed">
<meta charset="UTF-8">
<title>Logowanie</title>
<link rel = "stylesheet" type = "text/css" href = "Styles/main.css"/>
<link rel = "stylesheet" type = "text/css" href = "Styles/login.css"/>
</head>
<body>
  <section class="container">
    <div class="loginContainer">
      <!-- <div class="loginPopover"> -->
        <form id="forma" class="loginPopover" method="post" action="../functions/LogowaniePhp.php">
          <input name="loginInput" class="loginInput" type="email" placeholder="E-mail" pattern="[^@]+@[^@]+\.[a-zA-Z]{2,6}" required autofocus>
          <input name="hasloInput" class="loginInput" type="password" placeholder="Hasło" pattern=".{8,20}" required>
          <input class="submitInput" type="submit" value="ZALOGUJ">
        </form>
      <!-- </div> -->
    </div>
    <div class="footerContainer">
      <a href="register.aspx"><h3 class="footerText">Zarejestruj</h3></a>
      <a href="register.aspx"><h3 class="footerText">Strona główna</h3></a>
      <h3 class="footerText">© 2016 Johnny Appleseed</h3>
    </div>
  </section>
</body>
</html>
