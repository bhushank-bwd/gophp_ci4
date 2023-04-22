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
    public function viewDemo(){
        $data = [
            'page_title'=>"CI4 Home",
            'page_header'=>"Home Page"
        ];
        echo view('layouts/header',$data);
        echo view('view-demo');
        echo view('layouts/footer');
    }
    public function about(){
        $data = [
            'page_title'=>"CI4 Home",
            'page_header'=>"About Page"
        ];
        echo view('layouts/header',$data);
        echo view('view-demo');
        echo view('layouts/footer');
    }
}
