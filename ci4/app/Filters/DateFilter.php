<?php
namespace App\Filters;

use \CodeIgniter\Filters\FilterInterface;
use \CodeIgniter\HTTP\RequestInterface;
use \CodeIgniter\HTTP\ResponseInterface;

class DateFilter implements FilterInterface
{
    public function before(RequestInterface $req, $arguments = null)
    {
        echo $req->getIPAddress();
        echo "Before ".date("l Y-m-d h:i:A");
    }
    public function after(RequestInterface $req, ResponseInterface $resp, $arguments = null)
    {
        echo "After ".date("l Y-m-d h:i:A");
    }
}

?>