<?php

require_once 'fonction.php';
$numAgent = $_REQUEST['numAgent'];

$afficheNomCanevas = AfficheLesNomsCanevas($numAgent);
$contenuP2i = AfficheTousP2iDuAgent($numAgent);
$suiviVoulu = AfficheSuiviVoulu($numAgent);
$nomsCanevasSelectionner= explode("|",$suiviVoulu[0]->noms_canevas);
$nbCanevas = count($nomsCanevasSelectionner);
$plusGrandMois = AfficheValeurPlusGrandMois($numAgent);
// print_r($contenuP2i);

?>

<!DOCTYPE html>
<html>
  <head>
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <link rel="stylesheet" type="text/css" href="css/bootstrap-datepicker3.css">
      <link rel="stylesheet" href="bootstrap-4.4.1/css/bootstrap.css">
      <script type="text/javascript" language="javascript" src="bootstrap-4.4.1/js/jquery-3.4.1.js"></script>  
      <script src="bootstrap-4.4.1/js/bootstrap.min.js" ></script>
      <script src="bootstrap-4.4.1/js/bootstrap-datepicker.js"></script>
      <script src="bootstrap-4.4.1/js/bootstrap-datepicker.fr.min.js"></script>
	  <link rel="stylesheet" href="css/style.css">
  </head>
  
<body>
  <style>
    @page { margin-left: 0.39370078740157in; margin-right: 0.39370078740157in; margin-top: 0.31496062992126in; margin-bottom: 0.23622047244094in; }
    body { margin-left: 0.39370078740157in; margin-right: 0.39370078740157in; margin-top: 0.31496062992126in; margin-bottom: 0.23622047244094in; }
    table,td,th { border: 1px solid black; }
    #header{ width : 100%; border: none; }
    #header tr td, #infoAgent, #infoAgent tr td { border: none; }
    img { width: 10em; }
    table { margin-bottom:3em; }
    .Date { width: 6em; }
    .Anim { width: 8em; }
    .Inti { width: 22em; }
    .infoAgent { padding-left: 1em; } 
    #contexteEvaluation, .infoMois, .commentaire { width: 100%; }
    .infoMois td { width: 25%; }
    th{ text-align:center; }
    .infoMois td, #contexteEvaluation td { text-align:center; }
    #contexteEvaluation td { width: 33%; }
  </style>
  
  <table id="header">
        <tr>
            <td><img src="img/logo.png"></td> 
            <td><h1>Page de Garde du P2I</h1></td>
        </tr>
    </table>

<!-- INFORMATION DE L'AGENT -->

    <table id="infoAgent">
        <tr>
            <td>Nom :</td>
            <td class="infoAgent">Texte en dur</td>
            <td style="width: 5em;"></td>
            <td>Nom du Responsable :</td>
            <td class="infoAgent">Texte en dur</td>
        </tr>

        <tr>
            <td>Prénom :</td>
            <td class="infoAgent">Texte en dur</td>
            <td style="width: 5em;"></td>
            <td>Intitulé d'emploie :</td>
            <td class="infoAgent">Texte en dur</td>
        </tr>

        <tr>
            <td>Période Essai du :</td>
            <td class="infoAgent">Texte en dur</td>
            <td style="width: 5em;"></td>
            <td>Au :</td>
            <td class="infoAgent">Texte en dur</td>
        </tr>

        <tr>
            <td>Stage Probatoire du :</td>
            <td class="infoAgent">Texte en dur</td>
            <td style="width: 5em;"></td>
            <td>Au :</td>
            <td class="infoAgent">Texte en dur</td>
        </tr>
    </table>

<!--  -->

<!-- CONTEXTE DE L'ÉVALUATION -->

<table id="contexteEvaluation">
    <tr>
        <th colspan="3"> CONTEXTE DE L'ÉVALUATION </th>
    </tr>

    <tr>
        <td>Nouvel Emploie</td>
        <td>Mesure Promotionnel</td>
        <td>Mutation</td>
    </tr>

    <tr>
        <td></td>
        <td>X</td>
        <td></td>
    </tr>
</table>

<!--  -->

<!-- BILAN D'ÉTAPE RESPONSABLE -->

<table class="infoMois">
    <tr>
        <th colspan="4"> BILAN D'ÉTAPE RESPONSABLE </th>
    </tr>

    <tr>
        <th>mois 1 </th>
        <th>mois 2 </th>
        <th>mois 3 </th>
        <th>mois 4 </th>
    </tr>

    <tr>
        <td>08/12/2020</td>
        <td>19/01/2021</td>
        <td></td>
        <td></td>
    </tr>

    <tr>
        <td>07/11/2020</td>
        <td>22/03/2021</td>
        <td>04/05/2021</td>
        <td></td>
    </tr>

    <tr>
        <td>01/05/2020</td>
        <td>29/09/2020</td>
        <td>07/06/2021</td>
        <td></td>
    </tr>
</table>

<!--  -->

<!-- COMITÉ DE SUIVI -->

<table class="infoMois">
    <tr>
        <th colspan="4"> COMITÉ DE SUIVI </th>
    </tr>

    <tr>
        <th>mois 1 </th>
        <th>mois 2 </th>
        <th>mois 3 </th>
        <th>mois 4 </th>
    </tr>

    <tr>
        <td>17/06/2020</td>
        <td>19/08/2020</td>
        <td></td>
        <td></td>
    </tr>
</table>

<!--  -->

<!-- TAUX GLOBAL D'AVANCEMENT EN % -->

<table class="infoMois">
    <tr>
        <th colspan="4"> TAUX GLOBAL D'AVANCEMENT EN % </th>
    </tr>

    <tr>
        <th>mois 1 </th>
        <th>mois 2 </th>
        <th>mois 3 </th>
        <th>mois 4 </th>
    </tr>

    <tr>
        <td>25%</td>
        <td>46%</td>
        <td>68%</td>
        <td></td>
    </tr>
</table>

<!--  -->

<!-- COMMENTAIRE DE L'AGENT -->

<table class="commentaire">
    <tr>
        <th colspan="2"> COMMENTAIRE DE L'AGENT </th>
    </tr>

    <tr>
        <td><textarea cols="100" rows="10"></textarea></td>
        <td>19/01/2020</td>
    </tr>
</table>

<!--  -->

<!-- APPRÉCIATION GÉNÉRAL DU RÉSPONSABLE -->

<table class="commentaire">
    <tr>
        <th colspan="2"> APPRÉCIATION GÉNÉRAL DU RÉSPONSABLE </th>
    </tr>

    <tr>
        <td><textarea cols="100" rows="10"></textarea></td>
        <td>19/01/2020</td>
    </tr>
</table>

<!--  -->

<!-- COMMENTAIRE DE L'ADJOINT DIRECTEUR -->

<table class="commentaire">
    <tr>
        <th colspan="2"> COMMENTAIRE DE L'ADJOINT DIRECTEUR </th>
    </tr>

    <tr>
        <td><textarea cols="100" rows="10"></textarea></td>
        <td>19/01/2020</td>
    </tr>
</table>

<!--  -->

<!-- AVIS DU DIRECTEUR -->

<table class="commentaire">
    <tr>
        <th colspan="2"> AVIS DU DIRECTEUR </th>
    </tr>

    <tr>
        <td><textarea cols="100" rows="10"></textarea></td>
        <td>19/01/2020</td>
    </tr>
</table>

<!--  -->
<center>
    <table>
        <tr>
            <td><input type="button" onclick="window.location.href = 'visualisationP2I_Sythese.php?numAgent=<?php echo $numAgent; ?>';" value="Synthèse"></input></td>
            
            <!-- Bouton Mois -->
            <?php for ($i=1; $i<=$plusGrandMois[0]->moisMax ; $i++){
                ?><input type ="button" onclick="window.location.href = 'visualisationP2I_Mois.php?numAgent=<?php echo $numAgent.'&mois='.$i; ?>';" value="Mois <?php echo $i; ?>"></input><?php
            }?>
            <!--  -->

            <td><input type="button" onclick="window.location.href = 'visualisationP2I_Commentaire.php?numAgent=<?php echo $numAgent; ?>';" value="Commentaire Agent"></input></td>
            <td><input type="button" onclick="window.location.href = 'suiviP2I.php?numAgent=<?php echo $numAgent; ?>';" value="Retour Suivi P2I"></input></td>
        </tr>
    </table>
</center>


    
    


</body>
</html>