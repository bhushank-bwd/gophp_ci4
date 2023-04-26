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
}
