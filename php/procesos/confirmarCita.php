<?php
	require_once "../config/database.php";
	require_once "../gestionCitas/agenda.php";

	$agenda= new Agenda();
	$data=array(
	 $_POST['id']
	);
	echo json_encode($agenda->confirmarCita($data));
 ?>