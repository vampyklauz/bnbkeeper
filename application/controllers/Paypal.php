<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Paypal extends CI_Controller 
{
	 function  __construct(){
		parent::__construct();
		$this->load->library('paypal_lib');
		$this->load->model('product');
	 }
	 
	 function success(){
	 	$this->db->insert('payments',array('user_id'=>3));
	    //get the transaction data
		$paypalInfo = $this->input->post();
		$data['item_number'] = $paypalInfo['item_number']; 
		
		//pass the transaction data to view
        $this->load->view('paypal/success', $data);
	 }
	 
	 function cancel(){
        $this->load->view('paypal/cancel');
	 }
	 
	 function ipn(){
	 	print_r('debug');exit();
	 	$this->db->insert('payments',array('user_id'=>1));
		//paypal return transaction details array
		//$paypalInfo	= $this->input->post();
		/*$data['user_id'] = '123';
		$data['txn_id']	= '333';
		$data['payment_status']	= 'asda';

		//$paypalURL = $this->paypal_lib->paypal_url;		
		//$result	= $this->paypal_lib->curlPost($paypalURL,$paypalInfo);
		$this->product->insertTransaction($data);*/
		/*//check whether the payment is verified
		if(preg_match("/VERIFIED/i",$result)){
		    //insert the transaction data into the database
			$this->product->insertTransaction($data);
		}*/
    }
}