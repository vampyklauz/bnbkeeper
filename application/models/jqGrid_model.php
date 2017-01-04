<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class JqGrid_model extends CI_Model {

	function getAllData($start,$limit,$sidx,$sord,$where,$module,$module_data){
		if($limit != NULL)
	    	$this->db->limit($limit,$start);
	    if($where != NULL)
	        $this->db->where($where,NULL,FALSE);
	    $this->db->order_by($sidx,$sord);

		switch ($module) {
			case 'viewing_order':
				$this->db->select( 'order_id, services, keeper_id keeper, order_id actions' );
				$this->db->where( 'status', 0 );
				$sql = $this->db->get('tbl_orders');
				break;
		}
		

		
		$query = $sql;
	    return $query->result();

	}

}