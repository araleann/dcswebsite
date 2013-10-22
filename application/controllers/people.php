<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class People extends CI_Controller {

	public function __construct(){
            parent::__construct();
            // Your own constructor code
            $this->load->model('faculty');
    }

	public function index(){
		$data['faculty'] = $this->faculty->get_faculty();
		$this->load->view('people',$data);
	}

	
	
}

/* End of file people.php */
/* Location: ./application/controllers/people.php */