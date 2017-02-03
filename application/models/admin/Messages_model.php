<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Messages_model extends CI_Model {

	public function getMessages($id)
	{
		$this->db->select( 'tum.*,tm.*' );
		$this->db->select( 'sender.user_id sender_id, sender.user_fname sender_fname, sender.user_lname sender_lname, sender.user_email sender_email' );
		$this->db->select( 'receiver.user_id receiver_id, receiver.user_fname receiver_fname, receiver.user_lname receiver_lname, receiver.user_email receiver_email' );
		$this->db->where( 'tum.user_id', $id );
		$this->db->where( 'message_type', 'In' );
		$this->db->join( 'tbl_messages tm', 'tm.id = tum.message_id', 'left' );
		$this->db->join( 'tbl_users sender', 'sender.user_id = tm.sentby', 'left' );
		$this->db->join( 'tbl_users receiver', 'receiver.user_id = tm.sentto', 'left' );
		$sql = $this->db->get( 'tbl_user_messages tum' );

		return $sql->result();
	}

}