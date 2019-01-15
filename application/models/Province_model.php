<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Province_model extends CI_Model {
	protected $_name = 'tb_province';
	
    public function __construct() {
    	parent::__construct();
    }
	public function fetchPaginProvince($page, $limit, $offset, &$total, $params=array())
	{
		$query = $this->db->get_where($this->_name, array(), $limit, $offset);
		// echo "<pre>";
		// print_r($this->db->last_query());
		$total = $this->db->count_all_results($this->_name, FALSE);
		return $query->result_array();
	}
	
	public function fetchDistrict($page_number, $limit, $offset=null, $total, $params){
		$query = $this->db->get_where('tb_district', array('id_province'=>$params['id_province']), $limit=null, $offset);
		return $query->result_array();
	}
}