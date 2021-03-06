<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Profile extends CI_Controller {

	public function __construct() {

		parent::__construct();
		$this->load->driver('cache');
	}

	public function index($id = '')
	{
		$data['style'][] = 'assets/css/jquery-ui.custom.css';
		$data['style'][] = 'assets/css/jquery.gritter.css';
		$data['style'][] = 'assets/css/select2.css';
		$data['style'][] = 'assets/css/datepicker.css';
		$data['style'][] = 'assets/css/bootstrap-editable.css';
		$data['content'] = 'keeper/profile_view';
		$data['can_edit'] = $this->canEdit([1,2,4,3]);
		$data['rating'] = $this->getRating($id);
		$data['rating_update'] = $this->getCanUpdate($id);
		$data['users'] = $this->getUserInfo($id);
		if( ! $data['users'] ){
			$data['content'] = 'errors/error_500';
		}
		
		$this->load->view('base',$data);
	}

	public function approve()
	{
		$msg = '';
		$approver = $this->session->userdata('user_level');
		$id = $this->input->post('id');
		if( hasAccess($approver,[1,2]) ){
			if( $this->db->update('tbl_users',array('user_status'=>0),array('user_id'=>$id)) ){
				$msg = 'success';
			}else{
				$msg = 'Service unavailable. Please try later.';
			}
		}else{
			$msg = 'You dont have permision to approve this keeper';
		}

		echo $msg;
	}

	public function getRating($id)
	{
		$id = ($id) ? $id : $this->session->userdata('user_id');
		$rating = $this->helper_model->query_table('*','tbl_ratings',array('user_id'=>$id),'row');
		if( $rating ){
			$res_a = ( $rating->rate_1*1 ) + ( $rating->rate_2*2 ) + ( $rating->rate_3*3 ) + ( $rating->rate_4*4 ) + ( $rating->rate_5*5 );
			$res_b = $rating->rate_1 + $rating->rate_2 + $rating->rate_3 + $rating->rate_4 + $rating->rate_5;
			return $res_a/$res_b;
		}else{
			return false;
		}

	}

	public function getCanUpdate($id)
	{
		if( ! $id ){
			return true;
		}else{
			$user_id = $this->session->userdata('user_id');
			$rated_by = $this->helper_model->query_table('rated_by','tbl_ratings',array('user_id'=>$id),'single');

			if( $rated_by ){
				return ( in_array($user_id, json_decode($rated_by)) ) ? true : false;
			}else{
			
				return false;
			}
		}
	}

	public function updateRating()
	{
		$score = $this->input->post('score');
		$id = $this->session->userdata('user_id');
		$keeper_id = $this->input->post('id');
		$msg = 'error';

		$rating = $this->helper_model->query_table('*','tbl_ratings',array('user_id'=>$keeper_id),'row');
		$data['user_id'] = $keeper_id;
		$column = 'rate_'.$score;
		if( empty($rating) ){			
			$data[$column] = 1;
			$data['rated_by'] = json_encode(array($id));
			$this->db->insert('tbl_ratings',$data);
			$msg = 'success';
		}else{
			$rated_by = json_decode($rating->rated_by);
			$done = ( in_array($id, $rated_by) ) ? true : false;

			if( $done ){
				$msg = 'done';
			}else{
				array_push($rated_by, $id);
				$data['rated_by'] = json_encode($rated_by);
				$new_score = $rating->$column+1;
				$data[$column] = $new_score;
				$this->db->update('tbl_ratings',$data,array('user_id'=>$keeper_id));
				$msg = 'success';
			}
		}
		echo $msg;
	}

	public function update(){
		$name = $this->input->post('name');
		$pk = $this->input->post('pk');
		$value = $this->input->post('value');
		$user_id = $this->input->post('pk');
		$type = $this->input->post('type');
		$table = $this->input->post('table');


		$table = ( $table == 'tu' ) ? 'tbl_users' : 'tbl_user_infos';

		$row_exist = $this->helper_model->row_exist(array('user_id'=>$user_id),$table);

		if( is_array($value) ){
			$value = json_encode( $value );
		}		

		$data = array($name=>$value);

		if( $row_exist ){
			$where = array('user_id'=>$user_id);
			$data['updated_by'] = $user_id;
			$res = $this->db->update($table,$data,$where );
			print_r($user_id);exit();
		}else{
			$data['user_id'] = $user_id;
			$data['created_at'] = date('Y-m-d H:i:s');
			$res = $this->db->insert($table,$data);
		}

		return $res;
	}

	public function canEdit($array){

		if( empty($array) ){
			return false;
		}else{
			$acceess = $this->session->userdata('user_level');
			if( !empty( array_intersect($acceess, $array) ) )
				return true;
				return false;
		}
	}

	public function getUserInfo($id = ''){
		if( $id != '' ){
			$user_id = $id;
		}else{
			$user_id = $this->session->userdata('user_id');
		}
		$info = $this->helper_model->query_table('*','tbl_users',array('user_id'=>$user_id),'row');

		if( empty($info) ) return false;


		// Check if user login can access $id
		if( hasAccess($this->session->userdata('user_level'),[1,2]) ){

		}elseif( hasAccess($this->session->userdata('user_level'),[4]) ){
			$access = explode(',', $info->user_level);
			if( hasAccess($access,[1,2]) )
				return false;
			if( $info->user_status == 3 )
				return false;

		}else{
			if( $this->session->userdata('user_id') != $info->user_id )
				return false;
		}


		$personal = $this->helper_model->query_table('*','tbl_user_infos',array('user_id'=>$user_id),'row');

		$user_info = compact('info','personal');
		return $user_info;
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */