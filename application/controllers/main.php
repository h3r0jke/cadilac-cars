<?php
class Main extends CI_Controller {
	function __construct(){

	}

	public function Index()
	{
		print_r($this->db->get('info'));
	}
}