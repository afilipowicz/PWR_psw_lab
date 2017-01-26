<?php
if(!( $database = mysql_connect('localhost', 'root')))
    die("connect error");

if(!mysql_select_db("cvbase", $database))
    die("select db error");

$login = $_POST["loginInput"];
$haslo = $_POST["hasloInput"];

if(!isset($login) or !isset($haslo))
    die("empty values error");

$query = "SELECT id FROM Uzytkownicy WHERE Email = '$login' AND Haslo= '$haslo'";
$result = mysql_query($query, $database);
if(mysql_num_rows($result) == 0) {
    die("Niepoprawne dane logowania, cofnij aby spróbować ponownie.");
}
else
    setcookie("Zalogowany", $login, time() + 30, "/" );

mysql_close($database);

header('Location: http://localhost/personal/Personal Website/sources/personal.html');
?>
