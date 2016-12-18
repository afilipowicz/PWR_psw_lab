
		<?php
			if(!( $database = mysql_connect('localhost', 'root')))
				die("connect error");
			
			if(!mysql_select_db("cvbase", $database))
				die("select db error");
			
			$imie = $_POST["imieInput"];
			$nazwisko = $_POST["nazwiskoInput"];
			$telefon = $_POST["telefonInput"];
			$email = $_POST["emailInput"];

			if(!isset($imie) or !isset($nazwisko) or !isset($telefon) or !isset($email))
			    die("empty values error");

			$imie = mysql_real_escape_string($imie);
			$nazwisko = mysql_real_escape_string($nazwisko);
			$telefon = mysql_real_escape_string($telefon);
			$email = mysql_real_escape_string($email);print($imie);
			if (!filter_var($email, FILTER_VALIDATE_EMAIL) or !preg_match("/^[0-9]{3}\s[0-9]{3}\s[0-9]{3}$/", $telefon))
				die("emailerror");
			
			$query = "INSERT INTO uzytkownicy (Imie, Nazwisko, Telefon, Email) VALUES ('$imie', '$nazwisko', '$telefon', '$email')";
			if(!($result = mysql_query($query, $database)))
				die();
			
			mysql_close($database);
			
			header('Location: http://localhost/phpE/Lista4.html');
			 ?>