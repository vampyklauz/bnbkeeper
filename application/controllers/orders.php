<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Orders extends CI_Controller {

	public function index()
	{
		$data['style'][] = 'assets/css/ui.jqgrid.css';
		$data['style'][] = 'assets/css/datepicker.css';
		$data['content'] = 'orders/orders_view';
		$this->load->view('base',$data);
	}

	public function info($id){
		$data['content'] = 'orders/orders_info_view';
		$data['orders'] = $this->getOrders($id);
		if( ! $data['orders'] ){
			$data['content'] = 'errors/error_500';
		}
		$this->load->view('base',$data);
	}

	public function getOrders($id){
		return $this->helper_model->query_table( '*','tbl_orders','WHERE order_id = "'.$id.'"','row' );
	}

}