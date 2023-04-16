<?php 

class Agenda
{   
    public function getCitasDisponibles(){
        $database = new Database();
        $conn = $database -> connection();
        $querySelect ="SELECT * FROM agenda WHERE agendada = 0";
        $agendas = $conn->query($querySelect);
        
        return $agendas;
    }

    public function getById($id){
        $database = new Database();
        $conn = $database -> connection();
        $querySelect ="SELECT * FROM agenda WHERE id = $id";
        $agenda = $conn->query($querySelect);
        $result = mysqli_fetch_assoc($agenda);
        return $result;
    }

    public function confirmarCita($params){
        $database = new Database();
        $conn = $database -> connection();
        $id = $params[0];
        $query ="UPDATE agenda SET confirmada = 1 WHERE id = $id";
        $result = $conn->query($query);
        return $result;
    }

    public function liberarAgenda($params){
        $database = new Database();
        $conn = $database -> connection();
        $id = $params[1];
        $query ="UPDATE agenda SET confirmada = 0, agendada = 0 WHERE id = $id";
        $result = $conn->query($query);
        return $result;
    }
}



?>