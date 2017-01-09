<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->driver('cache');
		$access = $this->session->userdata('user_access');
		if( ! hasAccess($access,[1,2,4]) )
			redirect('No_access','refresh');
	}

	public function index(){
		$data['style'][] = 'assets/css/ui.jqgrid.css';
		$data['style'][] = 'assets/css/datepicker.css';
		
		$data['content'] = 'keeper/index_view';
		$this->load->view('base',$data);
	}

}