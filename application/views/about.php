<!-- Load Header -->
<?php $this->load->view('includes/header'); ?>

<body data-spy="scroll" data-target="#sidebar" data-offset="150">

		<!-- Load Navigation Bar-->
		<?php $this->load->view('includes/nav'); ?>

		
<div class="container">
  <div class="row">
    <div id="sidebar" class="col-md-3 affix" data-offset-top="150">
      <ul class="nav nav-stacked nav-list">
        <li><a href="#about" >About</a></li>
        <li><a href="#vision" >Vision</a></li>
        <li><a href="#mission" >Mission</a></li>
      </ul>
    </div>
    <div class="col-md-9 content">
      <section id="about">
		<h1>About the Department</h1><hr>
		<p>The Department of Computer Science is one of the eight departments in the College of Engineering (COE), 
		University of the Philippines Diliman (UPD). the road to establishing the youngest department in COE
		started in the mid 1970's with the institution of the Master of Engineering in Computer Science 
		(MEnng CS) program, a joint undertaking of the Department of Engineering Sciences (as the lead 
		department), the Department of Electrical Engineering and the Department of Mathematics of the the
		College of Science.</p>
		
		<p>In the early 1980's, the MEngg CS program was suspended as the Bachelor in Computer Science (BCS) was
		instituted. As with the master's program, the BCS program was also a joint undertaking of the ES, EE, 
		and Math departments. An initial batch of 35 shiftees from more than 200 applicants from various colleges
		in the UPD were admitted into the program in the second semester of AY 1982-1983. Of the 35, 32 finished 
		the course, 12 with latin honors. In this first batch of Computer Science graduates was the 1986 
		Engineering class valedictorian.</p>
		
		<p>In August 1988, the BOR approved the renaming of the ES department to 'Department of Engineering and 
		Computer Sciences (ECS)' to reflect the expertise available in the department. Three years later, in 
		August 1991, the ECS was split into two independent departments - taking ES back to its original name
		(Department of Engineering Sciences) and bringing to life the Department of Computer Science (DCS). The new department took full responsibility of offering the BCS program, which was subsequently renamed
		Bachelor of Science in Computer Science program.</p>

		<p>In May 1995, twenty years after the institution of the 
		pioneering, but now defunct, MEngg CS program, the BOR approved the institution of a new Master of 
		Science in Computer Science (MSCS) program. Both the BSCS and MSCS program continue to attract some 
		of the best students in UP Diliman.</p>
		
		<p>As of the end of the seconds semester of AY 2009-2010, the BCS/BSCS program has produced a total of 
		1191 graduates, 224 with Latin honors: 161 cum laude, 59 magna cum laude and 4 summa cum laude.</p>
		
		<p>Since its establishment in 1991, seven faculty members have served as DCS chair:</p>
		
		<ul>
			<li>Prof. Evangel P. Quiwa (October 1991-October 1995)</li>
			<li>Prof. Ma. Veronica M. Tayag (November 1995 - April 1996)</li>
			<li>Dr. Mark J. Encarnacion (May 1996 - March 2000)</li>
			<li>Dr. Jaime D.L. Caro (April 2000 - September 2002)</li>
			<li>Dr. Ronald M. Tungol (October 2002 - May 2005)</li>
			<li>Dr. Cedric Angelo M. Festin (June 2005 - May 2008)</li>
			<li>Dr. Jaime D.L. Caro (June 2008 - April 2011)</li>
			<li>Dr. Adrian Roy L. Valdez (March 2011 - March 2013)</li>
			<li>Dr. Cedric Angelo M. Festin (April 2013 - present)</li>
		</ul>
		
		<p>Initially located in the College of Engineering Building (Melchor Hall), the Department of Computer 
		Science moved to its new home at the Computer Science and Engineering Library Building 
		( UP Alumni Engineers Centennial Hall) on Velasquez St., UP Diliman campus, in January 2007.</p>
      </section>
      <section id="vision">
		<h1>Vision</h1><hr>
		<p>The Department of Computer Science will be a world-class research and teaching institution in the 
		field of Computer Science that serves the interest of the country.</p>
      </section>
      <section id="mission">
		<h1>Mission</h1><hr>
		<p>The mission of the Department of Computer Science is to produce graduates equipped with the 
		knowledge and skills required for professional careers and advanced studies in computer science, 
		to advance the discipline of computing through internationally-recognized research and development;
		to foster an environment that promotes academic excellence, professionalism and social responsibility; 
		and to address the needs of education, government and industry through extension projects and continuing
		education programs.</p>
      </section>
    </div>
  </div>
</div>

<!-- Load Footer-->
<?php $this->load->view('includes/footer', array('tag' =>'landing')); ?>