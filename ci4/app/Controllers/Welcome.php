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
}
