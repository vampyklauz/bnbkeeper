<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Viewing_order extends CI_Controller {

	public function index(){
		$data['style'][] = 'assets/css/ui.jqgrid.css';
		$data['style'][] = 'assets/css/datepicker.css';
		$data['content'] = 'keeper/orders_view';
		$this->load->view('base',$data);
	}

	public function actions(){
		$oper = $this->input->post('oper');
		$id = $this->input->post('id');
		$old_data = (array)json_decode($this->input->post('old_data'));
		$user_id = $this->session->userdata('user_id');

		$data = array();
		switch ($oper) {
			case 'add':
				$this->add_action();
				break;
			case 'del':

					$data = array(
						'status' => 1,
						'updated_by' => $user_id
					);
					$this->db->trans_start();
					$this->db->update('tbl_orders',$data,array('order_id'=>$id));
					//$this->db->update('tbl_patients',);
					$this->db->trans_complete();

					if ( $this->db->trans_status() ){ // check if transaction is successfull.
						// create trail data elements.
						unset($data['updated_by']);
						$trail_data = array(
							'name' => 'tbl_orders',
							'data_id' => $id, // ID of data modified.
							'data' => $data,
							'old_data' => array('status'=>0),
							'method' => $oper // action or method use of this transaction.
						);
						audit_trail($trail_data);
					}
				break;
			case 'edit':
				$data = array(
					'order_name' => $this->input->post('order_name'),
					'order_type' => $this->input->post('order_type'),
				);
				$deff = array_diff_assoc($data,$old_data);
				if( ! empty($deff) ){ // check if has difference.
					// Update database
					$data['updated_by'] = $user_id;
					$this->db->trans_start();
					$this->db->update('tbl_orders',$data,array('order_id'=>$id));
					//$this->db->update('tbl_patients',);
					$this->db->trans_complete();

					if ( $this->db->trans_status() ){ // check if transaction is successfull.
						// create trail data elements.
						unset($data['updated_by']);
						$trail_data = array(
							'name' => 'tbl_orders',
							'data_id' => $id, // ID of data modified.
							'data' => $data,
							'old_data' => $old_data,
							'method' => $oper // action or method use of this transaction.
						);
						audit_trail($trail_data);
						return true;
					}
				}
				break;
		}
	}
}