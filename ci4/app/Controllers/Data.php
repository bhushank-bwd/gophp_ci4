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
        $session = \CodeIgniter\Config\Services::session();
        helper('form');
        $data = [];
        $rules = [
            'username'=>'required',
            'email'=>'required|valid_email',
            'avatar'=>'uploaded[avatar]|max_size[avatar,1024]|ext_in[avatar,png,jpg,gif]',
            // 'avatars'=>'uploaded[avatar.0]|max_size[avatar,1024]|is_image[avatar]', // commented because 1 wrong file will execute all form submission
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
                $user = new UsersModel();
                $data = [
                    'username' => $this->request->getVar('username',FILTER_SANITIZE_STRING),
                    'email' =>$this->request->getVar('email',FILTER_SANITIZE_STRING),
                    'password' => $this->request->getVar('password',FILTER_SANITIZE_STRING),
                    'phone' => $this->request->getVar('phone',FILTER_SANITIZE_STRING),
                ];
                $status = $user->saveData($data);
               
                
                if($status){
                    $file = $this->request->getFile('avatar');
                    if($file->isValid() && !$file->hasMoved()){
                        $newName = $file->getRandomName();
                        // if($file->move(WRITEPATH."uploads",$newName)){
                        if($file->move(WRITEPATH."uploads",$file->getName())){
                             $session->setTempdata('Success','User created');
                        }else{
                            echo $file->getErrorString()." ".$file->getError();
                        }
                    }
                   
                    $files = $this->request->getFiles();
                    foreach($files['avatars'] as $img){
                        if($img->isValid() && !$img->hasMoved()){
                            $newName = $img->getRandomName();
                            // if($img->move(WRITEPATH."uploads",$newName)){
                            if($img->move(WRITEPATH."uploads/multiple/",$img->getName())){
                                 $session->setTempdata('Success','User created');
                                
                            }else{
                                echo $file->getErrorString()." ".$file->getError();
                            }
                        }
                    }
                    

                    // return redirect()->to(current_url());
                   
                }else{
                    $session->setTempdata('error','error');
                }

            }else{
                $data['validation'] = $this->validator;
            }
        }
        
        return view('form',$data);
    }
}