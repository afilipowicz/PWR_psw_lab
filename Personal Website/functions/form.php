<?php
if(!( $database = mysql_connect('localhost', 'root')))
    die("connect error");

if(!mysql_select_db("cvbase", $database))
    die("select db error");

$imie = $_POST["imieInput"];
$nazwisko = $_POST["nazwiskoInput"];
$telefon = $_POST["telefonInput"];
$email = $_POST["emailInput"];
$haslo = $_POST["hasloInput"];

$hasloLen = strlen($haslo);
if($hasloLen < 8 or $hasloLen > 20)
    die("incorrect password length");

if(!isset($imie) or !isset($nazwisko) or !isset($telefon) or !isset($email))
    die("empty values error");

$query = "SELECT id FROM Uzytkownicy WHERE Email = '$email'";
$result = mysql_query($query, $database);
if(mysql_num_rows($result) > 0) {
    die("Podany email istnieje już w bazie danych. Cofnij aby spróbować ponownie");
}

$imie = mysql_real_escape_string($imie);
$nazwisko = mysql_real_escape_string($nazwisko);
$telefon = mysql_real_escape_string($telefon);
$email = mysql_real_escape_string($email);
if (!filter_var($email, FILTER_VALIDATE_EMAIL) or !preg_match("/^[0-9]{3}\s[0-9]{3}\s[0-9]{3}$/", $telefon))
    die("emailerror");

$query = "INSERT INTO uzytkownicy (Email, Haslo, Imie, Nazwisko, Telefon) VALUES ('$email', '$haslo', '$imie', '$nazwisko', '$telefon')";
if(!($result = mysql_query($query, $database)))
    die();

mysql_close($database);

header('Location: http://localhost/phpE/Personal Website/sources/personal.html');
?>