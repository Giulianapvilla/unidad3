<?php
	require_once "../config/database.php";
	require_once "../gestionCitas/agenda.php";
	require_once "../gestionCitas/cita.php";
	$agenda= new Agenda();
	$cita = new Cita();
	$data=array(
	 $_POST['idCita'],
	 $_POST['idAgenda'],
	);
	echo json_encode($agenda->liberarAgenda($data));
	echo json_encode($cita->delete($data));
 ?>