<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Payments extends CI_Controller
{
	function  __construct() {
		parent::__construct();
		$this->load->library('paypal_lib');
	}

	function index(){
		//Set variables for paypal form
		$returnURL = base_url().'paypal/success'; //payment success url
		$cancelURL = base_url().'paypal/cancel'; //payment cancel url
		$notifyURL = base_url().'paypal/ipn'; //ipn url

		$logo = base_url().'assets/images/codexworld-logo.png';
		
		$this->paypal_lib->add_field('return', $returnURL);
		$this->paypal_lib->add_field('cancel_return', $cancelURL);
		$this->paypal_lib->add_field('notify_url', $notifyURL);
		$this->paypal_lib->add_field('item_name', 'item name here');
		$this->paypal_lib->add_field('item_number',  'item number hre');
		$this->paypal_lib->add_field('amount', 22);		
		$this->paypal_lib->image($logo);
		
		$this->paypal_lib->paypal_auto_form();
	}
}