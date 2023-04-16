<?php
class Query 
{
        public function getQuery($params){
            $query = "";
            switch ($params) {
                case 'value':
                    $query = "SELECT FROM";
                    break;
                
                default:
                    # code...
                    break;
            }

        }
}


?>