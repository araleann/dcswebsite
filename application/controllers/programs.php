<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Programs extends CI_Controller {

	public function __construct(){
            parent::__construct();
            // Your own constructor code
           
    }

	public function index(){
		$this->load->view('programs');
	}

	public function dl($flag = null){
		header("Content-type:application/pdf");
		if ($flag == 1) {
		// It will be called downloaded.pdf
		header("Content-Disposition:attachment;filename='BS CS Curriculum.pdf'");
		// The PDF source is in original.pdf
		readfile("files/programs/BS_CS_curriculum.pdf");
		} else if($flag == 2){
		// It will be called downloaded.pdf
		header("Content-Disposition:attachment;filename='MS CS Curriculum.pdf'");
		// The PDF source is in original.pdf
		readfile("files/programs/MS_CS_curriculum.pdf");
		} else if($flag == 3){
		// It will be called downloaded.pdf
		header("Content-Disposition:attachment;filename='PhD CS Curriculum.pdf'");
		// The PDF source is in original.pdf
		readfile("files/programs/PhD_CS_curriculum.pdf");
		}

	}  

	
	
}

/* End of file programs.php */
/* Location: ./application/controllers/programs.php */