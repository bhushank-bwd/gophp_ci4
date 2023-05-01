<?php 

namespace App\Libraries;

class TestLibrary {
    public $db; 
    public function __construct(){
        $this->db = \Config\Database::connect();
    }
    public function getData(){
        $query = $this->db->query('select * from app_url');
        $res = $query->getResult();
        if(count($res)){
            return $res;
        }else{
            return false;
        }
    }
    
}