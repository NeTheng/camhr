<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$total = 0;
$limit = LIMIT;
$offset = OFF_SET;
$page_number = !empty($this->uri->segment(3)) ? (int)($this->uri->segment(3)) : PAGE_NUMBER;
$params = array();
// $this->input->post('page', TRUE);
$sess = $this->session->userdata('userStorage');
// print_r($sess);

$config['base_url'] = site_url('province/index');
$config['use_page_numbers'] = TRUE;
$config['full_tag_open'] = '<div><ul class="pagination pagination-small pagination-centered">';
$config['full_tag_close'] = '</ul></div>';
$config['per_page'] = $limit;

$config['num_links'] = 5;
$config['page_query_string'] = FALSE;
$config['prev_link'] = '&lt; Prev';
$config['prev_tag_open'] = '<li>';
$config['prev_tag_close'] = '</li>';
$config['next_link'] = 'Next &gt;';
$config['next_tag_open'] = '<li>';
$config['next_tag_close'] = '</li>';
$config['cur_tag_open'] = '<li class="active"><a href="#">';
$config['cur_tag_close'] = '</a></li>';
$config['num_tag_open'] = '<li>';
$config['num_tag_close'] = '</li>';
$config['first_link'] = FALSE;
$config['last_link'] = FALSE;

$offset = ($page_number  == 1) ? 0 : ($page_number * $config['per_page']) - $config['per_page'];
$config['total_rows'] = 100;
$this->pagination->initialize($config);

		$data = array();
		$data['table_rows'] = $this->mod_pro->fetchPaginProvince($page_number, $limit, $offset, $total, $params);
		$data['pagin'] = $this->pagination->create_links();

header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

echo json_encode($data);