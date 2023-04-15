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
        echo view('user_header');
        echo view('user_home');
        echo view('user_footer');
    }
}
