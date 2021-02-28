<!DOCTYPE html>
<html>
<?php
$server = "localhost";
$user = "root";
$password = "";
$dbname = "salarier";
// Create connection
$conn = new mysqli($server, $user, $password, $dbname);
// Check connection 
if ($conn->connect_error) {
die("Connection failed: " . $conn->connect_error);
}

$id = $_GET['id'];
$requete = (" SELECT * FROM salaries WHERE `idsalaries`=$id ");
$result = mysqli_query($conn,$requete) or die ("Echec de la requete : $requete");
$ligne = mysqli_fetch_assoc($result);
$nom = $ligne['nom'];
$prenom = $ligne['prenom'];
$dateNaissance = $ligne['date_naissance'];
$dateEmbauche = $ligne['date_embauche'];
$salaire = $ligne['salaire'];
$services = $ligne['service'];
?> 

<form action="maj.php" method="get">
<p><input type="hidden" name="id" value=
	<?php echo $id ?>> </p>
<p> Nom : <input type="text" name="nom" value=
	<?php echo $nom ?> > </p>
<p> Prenom : <input type="text" name="prenom" value=
	<?php echo $prenom ?> > </p>
<p> Date Naisance : <input type="text" name="dateNaissance" value=<?php echo $dateNaissance ?> > </p>
<p> Date Embauche : <input type="text" name="dateEmbauche" value=<?php echo $dateEmbauche ?> > </p>
<p> Salaire : <input type="text" name="salaire" value=
	<?php echo $salaire ?> > </p>
<p> Service : <input type="text" name="services" value=
	<?php echo $services ?> > </p>
<p><input type="submit" value="Envoyer dans la Base de Donnée">
</p>
 

<?php
    if (isset($_REQUEST['services'])) {
        
        $nom=$_REQUEST['nom'];
        $prenom=$_REQUEST['prenom'];
        $dateNaissance=$_REQUEST['dateNaissance'];
        $dateEmbauche=$_REQUEST['dateEmbauche'];
        $salaire=$_REQUEST['salaire'];
        $service=$_REQUEST['services'];

        $requete2="UPDATE `salaries` SET `idsalaries`='$id',`nom`='$nom',`prenom`='$prenom',`date_naissance`='$dateNaissance',`date_embauche`='$dateEmbauche',`salaire`='$salaire',`service`='$service'  WHERE idsalaries=$id";
        mysqli_query($conn,$requete2) or die ("Echec de la requete : $requete2");
        echo "<a href='connectionServeurSalarier.php'>Confirmer</a> ";
    }
?>
</form>

</html>