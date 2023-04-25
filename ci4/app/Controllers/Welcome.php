<?php

namespace App\Controllers;

class Welcome extends BaseController
{
    public function index(){
        echo "Welcome to ";
    }
    public function home($name){
        echo "Welcome to ".$name;
    }
    public function dbTest(){
        $db_1 = \Config\Database::connect();
        $db_2 = \Config\Database::connect('second_db');
        echo "<pre>";
        print_r($db_1);
        print_r($db_2);

        $query_1 = $db_1->query("Select * from app_url");
        $res_1 = $query_1->getResult();
        print_r($res_1);

        $query_2 = $db_2->query("Select * from app_url2");
        $res_2 = $query_2->getResult();
        print_r($res_2);

    }
}
