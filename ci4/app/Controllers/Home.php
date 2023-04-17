<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index()
    {
        return view('welcome_message');
    }
    public function home()
    {
        $data = array(
            'title'=>'Home Page',
            'course'=>'Web Technology',
            'subjects'=>['HTML','PHP','CSS','Bootstrap','Javascript'],
        );
        echo view('home',$data);
    }
}
