<?php

namespace App\Models;

use CodeIgniter\Model;

class UsersModel extends Model
{
    public function getData(){
        $subjectArray = [
            ['subject'=>'CSS','FullForm'=>'Cascading StyleSheet'],
            ['subject'=>'HTML','FullForm'=>'HTML StyleSheet'],
            ['subject'=>'PHP','FullForm'=>'PHP StyleSheet'],
        ];
        return $subjectArray;
    }
    public function getList(){
        $db = \Config\Database::connect();
        $query = $db->query('select * from app_url');
        $res = $query->getResult();
        if(count($res)){
            return $res;
        }else{
            return false;
        }
    }
}
