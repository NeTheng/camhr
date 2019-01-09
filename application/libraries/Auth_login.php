<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth_Login {

	protected $CI;
    public function __construct(){
     	$this->CI =& get_instance();
    }

	public function is_logged_in()
	{
		$username = $this->CI->security->xss_clean($this->CI->input->post('username', true));
        $password = $this->CI->security->xss_clean($this->CI->input->post('pass', true));

		$this->CI->db->select('*');
		$this->CI->db->from('tb_staff');
		$this->CI->db->where('email', trim($username));
		$this->CI->db->where('password', md5($password));
		$query = $this->CI->db->get();

		$bool = false;
		if(!empty($query->num_rows()) && $query->num_rows()>=0){
			$bool = true;
		}else{$bool = false;}	

		$print = $this->CI->db->last_query();
		$userInfo = $query->result();

		$data = array(
			"userStorage" => $userInfo,
		);
		$this->CI->session->set_userdata($data);
		return $bool;
	}

}
