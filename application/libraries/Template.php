<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Template {

	protected $CI;
	protected $layout = 'layout/template';
    public function __construct(){
     	$this->CI =& get_instance();
    }

	public function setLayout($layout){
		$this->layout = $layout;
	}
	
	public function getLayout(){
		return $this->layout;
	}
	
    public function _layout($data, $bool=false)
    {
		$this->CI->parser->parse($this->getLayout(), (array)$data);
    }
	
	public function _menu(){
		echo "Menu!";
	}
	
	public function js_script(){}
	public function cs_script(){}

}