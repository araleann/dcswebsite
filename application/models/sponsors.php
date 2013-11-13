<?php
class Sponsors extends CI_Model{


	function __construct(){
		//call parent
		parent::__construct();
		$this->load->database();

	}

	/*************************** Get Functions **************************/
	public function get_sponsors(){
			 $query = $this->db->query ("SELECT `logo`, `name`, `link` FROM `Affiliate` A WHERE `status` = 1");
			 return $query->result();
	}

	public function get_corpo(){
		 $query = $this->db->query ("SELECT A.logo, C.description, C.contribution
		 		FROM `Affiliate` A INNER JOIN `CorporateDonor` C ON (A.partnerid = C.corporatedonorid)");
		 return $query->result();

	}

	
}
