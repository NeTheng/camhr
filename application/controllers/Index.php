<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Index extends CI_Controller {
	public function __construct(){
		parent::__construct();
	}
	public function index(){
        $sess = $this->session->userdata('userStorage');
		print_r($sess);
	
        $data_view = array();	
		$data['content'] = $this->parser->parse('index/index', $data_view, TRUE);
		$this->template->_layout($data, $bool=false);
	}
}
