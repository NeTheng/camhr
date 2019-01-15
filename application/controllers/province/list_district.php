<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$id_province = $this->input->get("id_province", TRUE);

$total = 0;
$limit = LIMIT;
$offset = OFF_SET;
$page_number = !empty($this->uri->segment(3)) ? (int)($this->uri->segment(3)) : PAGE_NUMBER;
$params = array();
$params['id_province'] = $id_province;

	$data = array();
	$data['table_rows'] = $this->mod_pro->fetchDistrict($page_number, $limit, $offset=null, $total, $params);

header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

echo json_encode($data);