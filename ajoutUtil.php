<!DOCTYPE html>
<html>
<head> 
	<title>Recuperation</title>
</head>
<body>
<?php
	$nom = $_REQUEST['nom'];
	$prenom = $_REQUEST['prenom'];
	$dateNaissance = $_REQUEST['dateNaissance'];
	$dateEmbauche = $_REQUEST['dateEmbauche'];
	$salaire = $_REQUEST['salaire'];
	$services = $_REQUEST['services'];

	$servername = "localhost";
	$username = "root";
	$password = ""; 
	$dbname = "salarier";

	// Create connection
	$conn = mysqli_connect($servername, $username, $password, $dbname);
	
	$requete = "INSERT INTO `salaries` (`nom`, `prenom`,`date_naissance`,`date_embauche`,`salaire`,`service`) VALUES('$nom','$prenom','$dateNaissance','$dateEmbauche','$salaire','$services')" ;
	mysqli_query($conn,$requete);

	echo "<a href='connectionServeurSalarier.php'>Retour</a>";

?>
</body>
</html>