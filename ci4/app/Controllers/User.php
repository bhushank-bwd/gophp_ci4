<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class User extends BaseController
{
    public function index()
    {
        echo "This is index";
    }
    public function test($name){
        echo "Test ".$name;
    }
    public function address($state,$city){
        echo "Address ".$city." ".$state;
    }
    public function _remap($method,$p1,$p2){

        // one way
        // if($method === 'test'){
        //     return $this->$method($p1);
        // }else if($method === 'address'){
        //     return $this->$method($p1,$p2);
        // }else{
        //     return $this->index();
        // }

        if(method_exists($this,$method)){
            return $this->$method($p1,$p2);
        }
        throw \CodeIgniter\Exceptions\PageNotFoundException::forPageNotFound();
    }
}
