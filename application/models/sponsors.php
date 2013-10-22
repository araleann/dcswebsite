<?php
class Sponsors extends CI_Model{


	function __construct(){
		//call parent
		parent::__construct();
		$this->load->database();

	}

	/*************************** Get Functions **************************/
	public function get_sponsors(){
			 $query = $this->db->query ("SELECT logo, name, link FROM `iglap_partners` WHERE status = 1 ");
			 return $query->result();
	}

	public function get_corpo(){
		 $query = $this->db->query ("SELECT i.logo, c.description, c.contribution
		 		FROM `iglap_partners` i, `corpo_donors` c 
			 	WHERE i.id = c.corpo_id");
		 return $query->result();

	}

	
}
