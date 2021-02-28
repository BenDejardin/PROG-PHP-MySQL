<!DOCTYPE html>
<html>
<head>
	<title>Salarier</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<?php
	$servername = "localhost";
	$username = "root";
	$password = ""; 
	$dbname = "salarier";

	// Create connection
	$conn = mysqli_connect($servername, $username, $password, $dbname);

	// Check connection
	if (!$conn) {
	 die("Connection failed: " . mysqli_connect_error());
	}
	$sql = "SELECT * FROM salaries ORDER BY idsalaries  ASC";

	// On teste si la requête sql ne provoque pas une erreure
	if ( !($result = mysqli_query($conn,$sql) ) )
	 {
	 die("Erreur dans la requete: " . mysqli_error($conn));
	 }
 
	//On teste si la requete retourne des résultats
	if (mysqli_num_rows($result) > 0) {


	echo "<table><tr>
			<th>ID</th>
			<th>Nom</th>
			<th>Prenom</th>
			<th>Date Naissance</th>
			<th>Date embauche</th>
			<th>Salaire</th>
			<th>Service</th>
			<th>MAJ</th>
			<th>DELETE</th>
		  </tr>";

	// On exploite chaque ligne de résultat
		 while( $row = mysqli_fetch_row($result) ) {
		 	
		 	$id = utf8_encode($row[0]);
		 	$nom = utf8_encode($row[1]);
		 	$prenom = utf8_encode($row[2]);
		 	$dateNaissance = utf8_encode($row[3]);
		 	$dateEmbauche = utf8_encode($row[4]);
		 	$salaire = utf8_encode($row[5]);
		 	$service = utf8_encode($row[6]);
		 
		 	
		 	echo "
				  <tr>
					<td>$id</td>
					<td>$nom</td>
					<td>$prenom</td>
					<td>$dateNaissance</td>
					<td>$dateEmbauche</td>
					<td>$salaire</td>
					<td>$service</td>
					<td><a href='maj.php?id=$id&nom=$nom&prenom=$prenom&dateNaissance=$dateNaissance&dateEmbauche=$dateEmbauche&salaire=$salaire&service=$service'>UPDATE</a></td>
					<td><a href='delate.php?id=$id'>DELETE</a></td>
					
				  </tr>";
		 }
		echo "</table>";

		echo "<a href='ajout.html'>Ajouter un salarier</a>";
	} 
	else {
	 echo "0 résultat";
	}
	mysqli_close($conn);
?>
</body>
</html>