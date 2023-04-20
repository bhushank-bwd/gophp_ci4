<?php

namespace App\Controllers;

use App\Controllers\BaseController;
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
}
