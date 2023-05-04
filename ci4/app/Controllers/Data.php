<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Libraries\TestLibrary;
use App\Models\UsersModel;
use \CodeIgniter\View\Table;
class Data extends BaseController
{
    public $parser;
    public function __construct(){
        $this->parser =  \Config\Services::parser();
    }
    public function index()
    {
        // $data = [['Name','City','State'],['Bhushan','Kop','Maharashtra'],['Ritesh','Panjim','Goa']];
        // $table = new Table();
        // $records['table'] = $table->generate($data);

        $table = new Table();
        $table->setHeading(['Name','City','State']);
        $table->addRow(['Bhushan','Kop','Maharashtra']);
        
        $template = [
            'table_open' => '<table border="1" cellpadding="4" cellspacing="2">',
        
            'thead_open'  => '<thead>',
            'thead_close' => '</thead>',
        
            'heading_row_start'  => '<tr>',
            'heading_row_end'    => '</tr>',
            'heading_cell_start' => '<th>',
            'heading_cell_end'   => '</th>',
        
            'tfoot_open'  => '<tfoot>',
            'tfoot_close' => '</tfoot>',
        
            'footing_row_start'  => '<tr>',
            'footing_row_end'    => '</tr>',
            'footing_cell_start' => '<td>',
            'footing_cell_end'   => '</td>',
        
            'tbody_open'  => '<tbody>',
            'tbody_close' => '</tbody>',
        
            'row_start'  => '<tr>',
            'row_end'    => '</tr>',
            'cell_start' => '<td>',
            'cell_end'   => '</td>',
        
            'row_alt_start'  => '<tr>',
            'row_alt_end'    => '</tr>',
            'cell_alt_start' => '<td>',
            'cell_alt_end'   => '</td>',
        
            'table_close' => '</table>',
        ];
        
        $table->setTemplate($template);
        $records['table'] = $table->generate();
        return view('table',$records);
    }
    public function parser()
    {
       
        $data = array(
            'title'=>"View Parser Title",
            'body'=>"View Parser Body",
            'subject_list' => [
                ['sub'=>'English','description'=>"s fkjnaskjfnasndaksnmdk.0"],
                ['sub'=>'Maths','description'=>"s 54etdsfvdsgrthrgdsvdsv fdfvdsvdsfcs.0"],
                ['sub'=>'History','description'=>"s r4tdsvdsfaefefw4esdfdsv.0"],
                ['sub'=>'Science','description'=>"s dfgdfgdsgdsfdsf.0"],
            ],
            'status'=>false,
        );
        $this->parser->setData($data);
        echo $this->parser->render('parser');
    }
    public function filter()
    {
       
        $data = array(
            'title'=>"View Parser Title",
            'body'=>"View Parser Body",
            'date' => '25-05-2023',
            'price' => '25.92',
            'mob' => '8244845415',
            'status'=>false,
        );
        echo $this->parser->setData($data)->render('filter');
    }
    public function getData(){
        $subject = new UsersModel();
        echo'<pre>';
        print_r($subject->getData());
        die;
        
    }
    public function getList(){
        $users = new UsersModel();
        $usersList = $data['users'] = $users->getList();
        echo'<pre>';
        print_r($usersList);
        die;
    }
    public function customLibrary(){
        $tl = new TestLibrary();
        echo'<pre>';
        print_r($tl->getData());
        die;
        
    }
    public function sendEmail(){
        $to = "";
        $subject = "";
        $message = "<h1>Html message</h1>";

        $mail = \Config\Services::email();
        $mail->setTo($to);
        $mail->setSubject($subject);
        $mail->setMessage($message);
        $mail->setCC("");
        $mail->setBCC("");
        $filepath = 'public/assets/img/1.jpg';
        $mail->attach($filepath);
        $mail->setFrom("");
        if($mail->send()){
            echo "mail sent";
        }else{
            $mail->printDebugger(['headers']);
        }
    }
    public function form(){
        helper('form');
        $data = [];
        $rules = [
            'username'=>'required',
            'email'=>'required|valid_email',
            'password'=>[
                'rules' => 'required',
                'errors' => [
                    'required'=> 'Please Enter Strong Password'
                ]
            ],
            // 'phone'=>'required|numeric|exact_length[10]',
            'phone' => [
                'rules'=>'required|numeric|exact_length[10]',
                'errors'=>[
                    'required'=>'Phone required',
                    'numeric'=>'Phone {value} is not number',
                    'exact_length'=>'Phone {value} is not {param} number',
                ]
            ]
        ];
        if($this->request->getMethod()=='post'){
            
            if($this->validate($rules)){
                echo "ready to save";
            }else{
                $data['validation'] = $this->validator;
            }
        }
        
        return view('form',$data);
    }
}