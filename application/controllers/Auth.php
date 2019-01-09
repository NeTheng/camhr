<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {
	function __construct(){
		parent::__construct();
		if(!empty($this->auth_login->is_logged_in()) 
			&& $this->auth_login->is_logged_in()==TRUE){
		}
	}
	public function index()
	{
        $sess = $this->session->userdata('userStorage');
        // print_r($sess);die;
        redirect('/index');
	}

	public function login()
	{
		$this->load->view('auth/login');
	}

	public function logout()
	{
		$this->session->unset_userdata('userStorage');
		redirect('auth/login');
	}

}
