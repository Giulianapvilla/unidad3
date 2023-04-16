<?php
class Database
{

    public function connection()
    {
        $host = "localhost";
        $username = "root";
        $password = "";
        $database = "giuliana_villa";

        $connection = mysqli_connect($host, $username, $password, $database);
        if ($connection->connect_error) {
            echo "<label>la conexion fallo . $connection->connect_error</label>";
        }
        return $connection;

    }

}


?>