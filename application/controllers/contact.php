<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Contact extends CI_Controller {

	public function __construct(){
            parent::__construct();
            // Your own constructor code
            $this->load->model('contact_us');
           
    }

	public function index(){
		$this->load->view('contact');
	}

	public function email(){
		
		$email = $this->input->post('email');
		 $name = $this->input->post('name');
		  $msg = $this->input->post('msg');
		 $sent = $this->contact_us->sendMail($email,$name);
			

		  if($sent){
            $this->contact_us->recMail($email, $name, $msg);
            redirect('contact');
        }
         
        else
        {
            redirect('contact');
            //show_error($this->email->print_debugger());
        }
       // redirect('main_cont/contact_us');

	}

	
	
}

/* End of file people.php */
/* Location: ./application/controllers/people.php */