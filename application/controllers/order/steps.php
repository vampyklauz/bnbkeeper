<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Steps extends CI_Controller {

	public function index()
	{
		$data['style'][] = 'assets/css/select2.css';
		$data['content'] = 'orders/steps_view';
		$this->load->view('plain',$data);
	}

}