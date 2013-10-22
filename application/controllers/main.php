<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Main extends CI_Controller {

	public function __construct(){
            parent::__construct();
            // Your own constructor code
            $this->load->model(array('sponsors', 'faculty'));
    }

	public function index(){
		$this->home();
	}

	public function home(){
		$this->load->view('landing');
	}

	public function news(){
		$this->load->view('news');
	}
	
	public function about(){
		$this->load->view('about');
	}

	public function research(){
		$this->load->view('research');
	}

	public function resources(){
		$this->load->view('resources');
	}

	public function test(){
		$this->load->view('test');
	}

}

/* End of file main.php */
/* Location: ./application/controllers/main.php */