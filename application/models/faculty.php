<?php
class Faculty extends CI_Model{


	function __construct(){
		//call parent
		parent::__construct();
		$this->load->database();

	}

	/*************************** Get Functions **************************/
	public function get_faculty(){
		$query = $this->db->query (
			"SELECT people_faculty.id,
				CONCAT(first_name,' ',last_name) as name, 
				faculty_tag_id,
				email, 
				research_labs.name as lab, 
				thumb_pic, 
				interest, 
				consult_hours, 
				faculty_ranks.name as rank 
			FROM 	`people_faculty`, 
				`research_labs`, 
				`faculty_ranks` 
			WHERE 	status = 1 AND 
				research_lab_id = research_labs.id AND 
				faculty_ranks_id = faculty_ranks.id");
		return $query->result();
	}
	
}
