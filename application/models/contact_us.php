<?php
class Contact_us extends CI_Model{


	function __construct(){
		//call parent
		parent::__construct();
		$this->load->library('email');


	}

	public function sendMail($email,$name){

		$this->email->from('webteam@dcs.upd.edu.ph', 'DCS Web Team');
		$this->email->to($email); 
		$this->email->set_newline("\r\n");

		$this->email->subject('Message Verification');
		//$this->input->post('msg')
		$msg = 'Hi '.$name.'!'."\n\n".'This is to confirm the receipt of your message.'."\n\n".' Thank you for visiting our website!';
		$this->email->message($msg);	

		  return $this->email->send();
	}

	public function recMail($email, $name, $msg){

		$this->email->from($email, $name);
		$this->email->to('webteam@dcs.upd.edu.ph'); 
		$this->email->set_newline("\r\n");

		$this->email->subject('Message From Website');
		//$this->input->post('msg')
		$this->email->message($msg);

		$this->email->send();	

		  
	}
	
}