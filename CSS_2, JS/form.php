<!DOCTYPE html>
<html>
	<head>
		<meta charset = "utf-8">
		<title>Form Validation</title>
	</head>
	<body>
		<?php
			$email = $_POST["emailInput"];
			if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
				$emailErr = "Invalid email format"; 
				print($emailErr);
			}
			?>
		<p>Wybrany email: <?php print($_POST["emailInput"]); ?>
		<p>Wiadomość: <?php print($_POST["textArea"]); ?>
		<p>Kopia: <?php print($_POST["selectInput"]); ?>
	</body>
</html>