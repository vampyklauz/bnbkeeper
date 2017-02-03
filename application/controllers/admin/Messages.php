<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Messages extends CI_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('admin/Messages_model','md');
		$this->load->driver('cache');
	}

	public function index(){
		$data['style'][] = 'assets/css/ui.jqgrid.css';
		$data['style'][] = 'assets/css/datepicker.css';
		
		$data['content'] = 'admin/messages_view';
		$this->load->view('base',$data);
	}

	public function sendEmail()
	{
		$email = $this->input->post('recipient');
		$subject = $this->input->post('subject');
		$message = $this->input->post('message');
		$sentToID = $this->getUserID($email);
		$res = '';
		if( $sentToID == '' ){
			$res = 'Email does not exist.';
		}else{
			
			// insert info to messages
			$messages_data = array(
				'sentby' => $this->session->userdata('user_id'),
				'sentto' => $sentToID,
				'message' => $message
				);
			$this->db->insert("tbl_messages",$messages_data);
			$message_id = $this->db->insert_id();
			$mailbox_data_to = array(
				'message_id' => $message_id,
				'user_id' => $sentToID,
				'message_type' => 'In',
				'message_status' => 'Unread'
				);
			$mailbox_data_from = array(
				'message_id' => $message_id,
				'user_id' => $this->session->userdata('user_id'),
				'message_type' => 'Out',
				);
			$this->db->insert("tbl_user_messages",$mailbox_data_to);
			$this->db->insert("tbl_user_messages",$mailbox_data_from);

			$res = 'success';
		}

		echo json_encode($res);
	}

	public function displayMessages()
	{
		$user_id = $this->session->userdata('user_id');
		$messages = $this->md->getMessages($user_id);
		echo json_encode($messages);
	}

	public function getUserID($email)
	{
		return $this->helper_model->query_table("user_id","tbl_users","WHERE user_email = '$email'","single");
	}

}