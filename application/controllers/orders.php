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
		$data['services'] = $this->getServices($data['orders']->services,$id);
		$data['total'] = $this->getServicesTotal($data['services']);
		$this->load->view('base',$data);
	}

	public function getOrders($id){
		return $this->helper_model->query_table( '*','tbl_orders','WHERE order_id = "'.$id.'"','row' );
	}

	public function getServicesTotal($services){
		$total = 0;
		foreach ($services as $service) {
			$total += $service->service_price;
		}
		return $total;
	}

	public function getServices($ids,$id){
		$ids = json_decode($ids);
		$cleaning = false;
		if (($key = array_search('cleaning', $ids)) !== false) {
		    unset($ids[$key]);
		    $cleaning_id = $this->helper_model->query_table("property_size","tbl_orders","WHERE order_id = $id","single");
		    if( $cleaning_id ){
		   		$cleaning = $this->helper_model->query_table("value","req_cleaning","WHERE id = $cleaning_id","single");
		   	}
		}
		$ids = implode(',', $ids);
		$services = $this->helper_model->query_table('*','req_services',"WHERE service_id IN ($ids)");
		
		if( $cleaning != false ){
			$clean = new StdClass();
			$clean->service_name = 'Cleaning';
			$clean->service_price = $cleaning;

			array_push($services, $clean);
		}

		return $services;
	}

}