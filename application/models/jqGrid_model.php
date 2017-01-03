<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class JqGrid_model extends CI_Model {

	function getAllData($start,$limit,$sidx,$sord,$where,$module,$module_data){
		if($limit != NULL)
	    	$this->db->limit($limit,$start);
	    if($where != NULL)
	        $this->db->where($where,NULL,FALSE);
	    $this->db->order_by($sidx,$sord);

		switch ($module) {
			case 'appointment_queues':
				
				$this->db->select( 'seq_id actions, seq_id,apt_patient_id patient_id,apt_insurance_id apt_insurance,apt_status status' );
				$this->db->select( 'CONCAT( first_name, " ", LEFT(middle_name,1), ". ", last_name ) as full_name',FALSE );
				$this->db->join( 'tbl_patients','patient_id = apt_patient_id','left');
				$this->db->where_in( 'apt_status', array('pending','done') );
				$sql = $this->db->get('tbl_appointments');
				
				break;
			case 'appointment_list':
				
				$this->db->select( 'seq_id,apt_insurance_id apt_insurance,apt_status status' );
				$this->db->select( 'CONCAT( first_name, " ", LEFT(middle_name,1), ". ", last_name ) as full_name',FALSE );
				$this->db->join( 'tbl_patients','patient_id = apt_patient_id','left');
				$this->db->where( 'patient_id',$module_data['patient_id'] );
				$this->db->where_in( 'apt_status', array('pending','done') );
				$sql = $this->db->get('tbl_appointments');
				
				break;
			case 'patient_list':
				$this->db->select( 'patient_id actions, patient_id, ri.insurance_name, contact_info, email' );
				$this->db->select( 'CONCAT( first_name, " ", LEFT(middle_name,1), ". ", last_name ) as full_name',FALSE );
				$this->db->join( 'req_insurance ri','ri.insurance_id = tbl_patients.insurance','left');
				if( !empty( $module_data['data_key']) && $module_data['searchType'] == 'quickSearch' ){
					$data = $module_data['data_key'];
					$filter_fields = array('patient_id','first_name','last_name','ri.insurance_name');
					$this->db->where($this->helper_model->searchLike($data,$filter_fields));
				}else if( $module_data['searchType'] == 'advanceSearch' ){
					$this->db->where($this->helper_model->advanceSearchLike($module_data['data']));
				}

				$sql = $this->db->get('tbl_patients');
				break;
		}
		

		
		$query = $sql;
	    return $query->result();

	}

}