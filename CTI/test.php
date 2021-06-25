<?php

include('Includes/globals.php'); 	// ** 
require_once 'fonction.php';
?>



<!DOCTYPE html>     <!-- ************* -->
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
  
  
<!-- *Date Picker* -->
  <script type="text/javascript">
	// Initialisation JQUERY
	$(document).ready(function() {
      // dateTraitement = '';
      // Site Boostrap datePicker 
      // https://bootstrap-datepicker.readthedocs.io/en/latest/options.html

		$('.AModifier').datepicker({
          maxViewMode: 2,
          language: "fr",
          orientation: "bottom left",
          //daysOfWeekDisabled: "0",
          calendarWeeks: true,
          todayHighlight:true,
          autoclose:true
		});
	  	  
	});
  </script>
<!-- ** -->
  
  
<body>
<center>



		<input type="date" class="AModifier" id="Datedeb" name="Datedeb" value="" />
 
 <?php 
    $date = "2020-01-02";
    $dateAnglais = DateConvertiseurAnglaisFrancais($date); 
    echo $dateAnglais;
 ?>
        
		  
</center>
</body>
</html>



