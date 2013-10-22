<!-- Load Header -->
<?php $this->load->view('includes/header'); ?>
	<body data-spy = 'scroll' data-target = '#sidebar'>		
		
		<!-- Load Navigation Bar-->
		<?php $this->load->view('includes/nav'); ?>

		<div class = 'container-fluid'>
			<div class = 'row-fluid'>
				<div class = 'span4' id = 'sidebar'>
					<ul class = 'nav nav-list affix-top' data-spy = 'affix'>
						<li class = 'nav-header'><a href = '#bachelor'>Bachelor's Degree</a></li> 
						<li class = 'nav-header'><a href = '#master'>Master's Degree</a></li>
						<li class = 'nav-header'><a href = '#doctor'>Doctorate Degree</a></li>
					</ul>
				</div>
				<div class = 'span7'>
					<br>
					<div id = 'content'>
					<h1 id ='header-main'>Programs</h1>
					<section id = 'program'>
						<h1>Bachelor of Science in Computer Science</h1>
						<h3>Background / Rationale</h3>
						<p>
							The BSCS program is designed to equip the student with a knowledge of the fundamental concepts and
							a reasonable mastery of the basic tools and techniques in the following computing areas:
						 </p>
						 <ul>
							<li>Algorithms and data structures</li>
							<li>Programming languages</li>
							<li>Computer architecture</li>
							<li>Numerical and symbolic computation</li>
							<li>Operating systems</li>
							<li>Software methodology and engineering</li>
							<li>Database and information retrieval</li>
							<li>Artificial intelligence</li>
						</ul>
						
						Graduates of the program are prepared to engage in the design and development of the following software systems:
						<ul>
							<li>Operating systems</li>
							<li>Intelligent systems</li>
							<li>Database systems</li>
							<li>Information systems</li>
							<li>Application systems</li>
							<li>Computer networks and distributed systems</li>
						</ul>	
						<p></p>
						
						<h3>Curriculum and Complete Course Description</h3>
						<a href = "<?php echo base_url('files/programs/BS_CS_curriculum.pdf'); ?>" target = '_blank'>
							<i class = 'icon-search'></i>View on browser
						</a>
						<a href = "<?php echo site_url('programs/dl/1'); ?>">
							<i class = 'icon-download'></i>Download PDF File
						</a> 
				</section> 
				<section id = 'program'>
					<h1>Master of Science in Computer Science</h1>
					<h3>Background / Rationale</h3>
					<p>
						The MSCS program aims to provide both breadth and depth of knowledge in the concepts and techniques
						related to the theory, design, implementation, and applications of computer systems. Students are required
						to take courses, which cover advanced topics in theoretical computer science and computer systems. Students 
						of the MSCS program are expected to write a thesis under the guidance of a faculty adviser. However, a student 
						may elect to take additional courses in lieu of writing a thesis. Full-time students should be able to complete 
						the program in two years.
					</p> 
					<h3>Admission Requirements</h3>
					<ol>
						<li>
							Applicants must have at least a bachelor’s degree in Computer Science, Engineering, Mathematics or
							other fields, which provide a substantial background in computing.
						</li>
						<li>
							Applicants must demonstrate proficiency in at least one high-level programming language prescribed
							by the department’s graduate committee.
						</li> 
						<li>
							Applicants must have a general knowledge of Computer Science. This may include, but is not limited
							to, the following:
							<ul>
								<li>Data Structures</li>
								<li>Theory of Computation</li>
								<li>Discrete Mathematical Structures</li>
								<li>Algorithms</li>
								<li>Computer Networks</li>
								<li>Database Systems</li>
								<li>Software Engineering</li>
							</ul>
						</li> 
						<li>
							Applicants must get their endorsement by one of the department’s six (6) research laboratories.
						</li>
					</ol>  
				 
					<h3>Curriculum and Complete Course Description</h3>
					<a href = "<?php echo base_url('files/programs/MS_CS_curriculum.pdf'); ?>" target = '_blank'>
						<i class = 'icon-search'></i>View on browser
					</a>
					<a href = "<?php echo site_url('programs/dl/2'); ?>">
						<i class = 'icon-download'></i>Download
					</a> 
				</section> 
				<section id = 'program'>
					<h1>Doctor of Philosophy in Computer Science</h1>
					<h3>Background / Rationale</h3>
					<p>
						The program aims to develop computer scientists who are armed with methods, tools and techniques 
						from both theoretical and systems aspects of computing. They should be able to formulate computing 
						problems and develop new and innovative technology as novel solutions to address those problems. The 
						graduates will gain expertise to independently contribute in Research and Development (R&amp;D) on a 
						specialized area of Computer Science. The program will prepare graduates for professional and/or 
						research careers in industry, government or academe.
					</p> 
					<h3>Admission Requirements</h3> 
					<ol>
						<li>
							Applicants must have a master’s degree in Computer Science, Electrical and Electronics Engineering,
							Mathematics or other fields, provided they have a substantial background in computing. This must include the following:
							<ul>
								<li>Data Structures</li>
								<li>Automata Theory</li>
								<li>Discrete Mathematical Structures</li>
								<li>Algorithms</li>
								<li>Computer Organization</li>
								<li>Operating Systems</li>
								<li>Computer Networks</li>
								<li>Database Systems</li>
								<li>Software Engineering</li>
							</ul>
						</li> 
						<li>
							Applicants must demonstrate proficiency in at least one (1) high-level programming language prescribed by the department’s graduate committee.
						</li> 
						<li>
							Applicants must get their endorsement by one (1) of the department’s six (6) research laboratories:
							<ul>
								<li>Algorithms and Complexity Laboratory (ACL)</li>
								<li>Computer Security Laboratory (CSL)</li>
								<li>Computer Vision and Machine Intelligence Group (CVMIG)</li>
								<li>Networks and Distributed Systems Group (NDSG)</li>
								<li>Scientific Computing Laboratory (SCL)</li>
								<li>Web Science Laboratory (WSL)</li>
							</ul>
						</li>
					</ol>  
					<h3>Curriculum and Complete Course Description</h3>
					<a href = "<?php echo base_url('files/programs/PhD_CS_curriculum.pdf'); ?>" target = '_blank'>
						<i class = 'icon-search'></i>View on browser
					</a>
					<a href = "<?php echo site_url('programs/dl/3'); ?>">
						<i class = 'icon-download'></i>Download
					</a>
				</section> 
				</div>
			</div>
<!-- Load Footer-->
<?php $this->load->view('includes/footer', array('tag' => 'programs')); ?>