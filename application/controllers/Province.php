<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Province extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->model('province_model', 'mod_pro');	
	}
	public function index()
	{
		include(dirname(__FILE__)."/province/index.php");      
	}

	public function child()
	{
		include(dirname(__FILE__)."/province/child.php");      
	}	
}