<?php
class Cita{


    public function listar(){
        
        $database = new Database();
        $conn = $database -> connection();
        $querySelect ="SELECT * FROM citas";
        $citas = $conn->query($querySelect);
        
        return $citas;

    }

    public function getById(){
        
    }

    public function save($params){
        $database = new Database();
        $conn = $database -> connection();
        $tipoIdentificacion = $params['tipoIdentificacion'];
        $numeroIdentificacion = $params['numeroIdentificacion'];
        $nombre = $params['nombre'];
        $apellido = $params['apellido'];
        $email = $params['email'];
        $telefono = $params['telefono'];
        $idAgenda = $params['idAgenda'];

        $queryInsert = "INSERT INTO citas VALUES(NULL,'$tipoIdentificacion','$numeroIdentificacion','$nombre','$apellido','$telefono','$email',$idAgenda)";
        $save = $conn->query($queryInsert);
        if($save){
            $idAgenda = $params['idAgenda'];
            $queryUpdate = "UPDATE agenda SET agendada = 1 WHERE id = $idAgenda";
            $updateAgenda = $conn->query($queryUpdate);
        }
        return $save;

    }

    public function delete($params){
        $database = new Database();
        $conn = $database -> connection();
        $id = $params[0];
        $query ="DELETE FROM citas WHERE id = $id";
        $result = $conn->query($query);
        return $result;
        
    }

    public function update(){
        
    }

}

?>