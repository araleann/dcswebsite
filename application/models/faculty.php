<?php
class Faculty extends CI_Model{


	function __construct(){
		//call parent
		parent::__construct();
		$this->load->database();

	}

	/*************************** Get Functions **************************/
	public function get_faculty(){
		$query = $this->db->query(
		"SELECT F.facultyid as id,
			CONCAT(P.first_name, ' ', P.last_name) as name,
			PO.name as position,
			F.email,
			P.picture as thumb_pic,
			F.research as interest,
			F.consultation as consult_hours,
			L.name as lab
		FROM	`People` P JOIN
			`Faculty` F ON (P.peopleid = F.facultyid) JOIN
			`Position` PO USING (positionid) LEFT JOIN
			`FacultyLab` FL USING (facultyid) LEFT JOIN
			`Lab` L USING (laboratoryid) 
		WHERE	P.status = 1"
		);
/*		$query = $this->db->query (
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
				*/
		return $query->result();
	}
	
}
