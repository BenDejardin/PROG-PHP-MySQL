<!DOCTYPE html>
<html>
<head>
	<title>Recuperation</title>
</head>
<body> 
<?php
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "salarier";

	// Create connection
	$conn = mysqli_connect($servername, $username, $password, $dbname);
	$id = $_GET["id"];
	$requete = "DELETE FROM `salaries` WHERE `idsalaries` = $id" ;
	mysqli_query($conn,$requete);

	echo "<a href='connectionServeurSalarier.php'>Retour</a>";

?>
</body>
</html>