<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Partners extends CI_Controller {

	public function __construct(){
            parent::__construct();
            // Your own constructor code
            $this->load->model('sponsors');
    }

	public function index(){
		$data['sponsors'] = $this->sponsors->get_sponsors();
		$this->load->view('partners',$data);
	}

	
	
}

/* End of file main.php */
/* Location: ./application/controllers/main.php */