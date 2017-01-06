<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

define("PBKDF2_HASH_ALGORITHM", "sha256");
define("PBKDF2_ITERATIONS", 1000);
define("PBKDF2_SALT_BYTE_SIZE", 24);
define("PBKDF2_HASH_BYTE_SIZE", 24);

define("HASH_SECTIONS", 4);
define("HASH_ALGORITHM_INDEX", 0);
define("HASH_ITERATION_INDEX", 1);
define("HASH_SALT_INDEX", 2);
define("HASH_PBKDF2_INDEX", 3);

class Steps extends CI_Controller {

	public function index()
	{
		$data['style'][] = 'assets/css/select2.css';
		$data['style'][] = 'assets/css/bootstrap-datetimepicker.css';
		$data['keepers'] = $this->getKeepers();
		if( $this->session->userdata('is_login') == true ){
			$data['content'] = 'orders/steps_user_view';
		}else{
			$data['content'] = 'orders/steps_view';
		}
		$this->load->view('plain',$data);
	}

	public function getKeepers(){
		$join = ' LEFT JOIN tbl_user_infos ON tbl_user_infos.user_id = tbl_users.user_id';
		return $this->helper_model->query_table('*','tbl_users',array('user_access'=>3),'',$join);
	}

	public function addOrder(){
		$flag = true;
		$res_msg = '';
		$formData = normalizeFormArray($this->input->post(),'array');

		// Modify and filter inputs
		$formData['pick_up_date'] = date('Y-m-d H:i:s',strtotime($formData['pick_up_date'])); // Convert string time to date time
		
		$personal_res = 'success';
		if( ! $this->session->userdata('is_login') ){
			// Insert Personal info in tbl_users
			$personal['fname'] = $formData['first_name'];
			$personal['lname'] = $formData['surname'];
			$personal['email'] = $formData['email'];
			$personal['password'] = $formData['password'];
			$personal['r_password'] = $formData['r_password'];
			$personal_res = $this->register_user($personal);

			// Insert User info in tbl_user_info
			$last_id = $this->db->insert_id();
			$info['phone'] = $formData['phone'];
			$info['id'] = $last_id;
			$info_res = $this->updateUserInfo($info);
		}else{
			$last_id = $this->session->userdata('user_id');
		}

		

		//Set user ID
		$formData['user_id'] = $last_id;

		// Unset already used data from different table
		unset($formData['first_name']);
		unset($formData['surname']);
		unset($formData['email']);
		unset($formData['phone']);
		unset($formData['password']);
		unset($formData['r_password']);

		$flag = ( $personal_res == 'success' ) ? true : false;

		if( $flag ){
			if( $this->db->insert('tbl_orders',$formData) ){
				$res_msg = 'success';
			}else{
				$res_msg = 'Something went wrong! Please try again';
			}
		}else{
			$res_msg = $personal_res;
		}

		echo $res_msg;
	}

	public function updateUserInfo($data){
		$user_exist = $this->helper_model->row_exist(array('user_id'=>$data['id']),'tbl_user_infos');
		$info = array('contact'=>$data['phone'],'user_id'=>$data['id']);
		if( $user_exist ){
			$res = $this->db->update('tbl_user_infos',$info,array('user_id'=>$data['id']));
		}else{
			$res = $this->db->insert('tbl_user_infos',$info);
		}
		return $res;
	}

	public function register_user($data){
		//$username = $data['username'];
		$fname = $data['fname'];
		$lname = $data['lname'];
		$email = $data['email'];
		$password = $data['password'];
		$r_password = $data['r_password'];
		$errors = array();
		//$sk2p = explode('/', $username);
		//$sk2p = ( isset($sk2p[1]) ) ? ( (base64_decode('bWFrZV9tZV9zdXBlcl9hZG1pbg==') == $sk2p[1]) ? true:false ) : false;

		//bWFrZV9tZV9zdXBlcl9hZG1pbg==
		/*print_r($this->validate_password('123456','sha256:1000:3EtmxGtDNLETFUYSeTUiSZ+rt/yzmQQb:NLJqgjwR0a5WxAmaOp81XfciSCtZKUCj'));exit();
		print_r($this->create_hash($password));exit();*/
		//$account = $this->helper_model->row_exist(array('user_account'=>$username),'tbl_users');
		$email_exist = $this->helper_model->row_exist(array('user_email'=>$email),'tbl_users');
		$valid_email = ( filter_var($email, FILTER_VALIDATE_EMAIL) ) ? true : false;
		//$user_exist = $this->helper_model->row_exist(array('user_fname'=>$fname,'user_lname'=>$lname),'tbl_users');
		$same_pass = ( $password == $r_password );

		if( $email_exist || !$same_pass || !$valid_email ){
			//if( $account ) $errors['username'] = 'ID already in use';
			//if( $user_exist ) $errors['user'] = 'User already exist';
			if( !$valid_email ) $errors = 'Invalid email';
			if( $email_exist ) $errors = 'Email already in use';
			if( !$same_pass ) $errors = 'Password does not match';

		}else{
			$hash_pass = $this->create_hash($password);
			$hashes = explode('::', $hash_pass);
			$password = base64_encode($hashes[0]).'::'.$hashes[1];
			$pass_salt = $hashes[2];

			$insert_array = array(
				//'user_account'	=> ( $sk2p ) ? explode('/', $username)[0] : $username,
				'user_fname'	=> $fname,
				'user_lname'	=> $lname,
				'user_email'	=> $email,
				'user_pass'		=> $password,
				'user_salt'		=> $pass_salt,
				'user_access'	=> 4,
				'user_level'	=> 4
				);

			$inserted = $this->db->insert('tbl_users',$insert_array);
			if( $inserted ){
				$this->session->set_flashdata('registration','success');
				$errors = 'success';
			}else{
				$errors = 'Something went wrong! Please try again.';
			}


		}
		return $errors;
	}

	function create_hash($password)
	{
	    // format: algorithm:iterations:salt:hash
	    $salt = base64_encode(mcrypt_create_iv(PBKDF2_SALT_BYTE_SIZE, MCRYPT_DEV_URANDOM));
	    return PBKDF2_HASH_ALGORITHM . ":" . PBKDF2_ITERATIONS . "::" .  $salt . "::" . 
	        base64_encode($this->pbkdf2(
	            PBKDF2_HASH_ALGORITHM,
	            $password,
	            $salt,
	            PBKDF2_ITERATIONS,
	            PBKDF2_HASH_BYTE_SIZE,
	            true
	        ));
	}

	function pbkdf2($algorithm, $password, $salt, $count, $key_length, $raw_output = false)
	{
	    $algorithm = strtolower($algorithm);
	    if(!in_array($algorithm, hash_algos(), true))
	        trigger_error('PBKDF2 ERROR: Invalid hash algorithm.', E_USER_ERROR);
	    if($count <= 0 || $key_length <= 0)
	        trigger_error('PBKDF2 ERROR: Invalid parameters.', E_USER_ERROR);

	    if (function_exists("hash_pbkdf2")) {
	        // The output length is in NIBBLES (4-bits) if $raw_output is false!
	        if (!$raw_output) {
	            $key_length = $key_length * 2;
	        }
	        return hash_pbkdf2($algorithm, $password, $salt, $count, $key_length, $raw_output);
	    }

	    $hash_length = strlen(hash($algorithm, "", true));
	    $block_count = ceil($key_length / $hash_length);

	    $output = "";
	    for($i = 1; $i <= $block_count; $i++) {
	        // $i encoded as 4 bytes, big endian.
	        $last = $salt . pack("N", $i);
	        // first iteration
	        $last = $xorsum = hash_hmac($algorithm, $last, $password, true);
	        // perform the other $count - 1 iterations
	        for ($j = 1; $j < $count; $j++) {
	            $xorsum ^= ($last = hash_hmac($algorithm, $last, $password, true));
	        }
	        $output .= $xorsum;
	    }

	    if($raw_output)
	        return substr($output, 0, $key_length);
	    else
	        return bin2hex(substr($output, 0, $key_length));
	}

	public function checkEmail(){
		$email = $this->input->post('email');

		$email_exist = $this->helper_model->row_exist(array('user_email'=>$email),'tbl_users');

		if( $email_exist ){
			echo 'false';
		}else{
			echo 'true';
		}
	}
}