<!-- Load Header -->
<?php $this->load->view('includes/header'); ?>

<body data-spy="scroll" data-target="#sidebar" data-offset="200">		
		
		<!-- Load Navigation Bar-->
		<?php $this->load->view('includes/nav'); ?>

<div class="container">
  <div class="row">
    <div id="sidebar" class="col-md-3 affix" data-offset-top="200">
      <ul class="nav nav-stacked nav-list">
	    <li><a href="#faculty" >Faculty</a></li>
           <li><a href="#staff" >Staff</a></li>
           <li><a href="#students" >Students</a></li>
      </ul>
     </div>
	<div class="col-md-9 content">
		<section id = 'faculty'>
			<h1>Faculty</h1>
			<table class = 'table table-striped table-bordered' id = 'tfaculty'>
				<thead>
				<tr>
					<th>Name</th>
					<th>Laboratory</th>
					<th>Position</th>
				</tr>
				</thead>
				<tbody>
				<?php foreach($faculty as $fac) { ?> 
					<tr>
						<td><a href = "<?php echo '#'.$fac->id;?>" data-toggle = 'modal'><?php echo $fac->name; ?></a></td>
						<td><?php echo $fac->lab ?></td>
						<td><?php echo $fac->rank ?></td>
					</tr>
				<?php } ?>
				</tbody>
			</table>
					</section>
					<section id = 'staff'>
						<h1>Staff</h1>
						<table class = 'table table-bordered table-striped' id = 'tstaff'>
							<thead>
								<tr>
									<th>Name</th>
									<th>Position</th>
									<th>Room</th>
								</tr>
							</thead>
								<tr>
									<td>Maria Milagros Ramos</td>
									<td>Admin Staff</td>
									<td>AECH 301</td>
								</tr>
								<tr>
									<td>Grace Dumencel</td>
									<td>Admin Staff</td>
									<td>AECH 300</td>
								</tr>
							<tbody>
							
							</tbody>
						</table>
					</section>	
					<section  id = 'students'>
						<h1>Students</h1>
						<table class = 'table table-bordered table-striped' id = 'tstudents'>
							<thead>
								<tr>
									<th>Organization</th>
									<th>Description</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>UP ACM</td>
									<td>The Association for Computing Machinery –University of the Philippines Student Chapter is a university-wide academic organization pursuing the interests in educational and scientific computing. It is the first student chapter of ACM, the world's oldest scientific computing society.</td>
								</tr>
								<tr>
									<td>UP CURSOR</td>
									<td>The University of the Philippines Association of Computer Science Majors (UP CURSOR) is a nonprofit, non-stock, nonsectarian socio-civic-academic student organization in the College of Engineering, UP Diliman, Quezon City. The Organization is continuously producing proficient and skilled individuals, able to lead and serve. The Organization reaches out, not only in the department, in the college, in the university, in high schools, but even in the society to share our talents and skills.</td>
								</tr>
							</tbody>
						</table>
					</section>
				</div>
			</div>
			
			<!-- MODAL -->
			<?php foreach($faculty as $fac) { ?>
				<div id = "<?php echo $fac->id; ?>" class = 'modal fade' tabindex = '-1' role = 'dialog' aria-labelledby = 'myModalLabel' aria-hidden = 'true'> 
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
								<h3 class="modal-title center"><?php echo $fac->name; ?></h3>
							</div>
							<div class="modal-body container">
								<img class="col-md-6 pull-left img-responsive" src = "<?php echo base_url('files/people_pics').'/'.$fac->thumb_pic; ?>"></img>
								
								<div class="col-md-6 pull-left">
									<h5><i class = 'icon-user'></i><?php echo $fac->rank; ?></h5> 
									<h5><i class = 'icon-bookmark'></i><?php echo $fac->lab; ?></h5>
									<div class = 'research'>
										<h5><i class = 'icon-pencil'></i>Research Interests</h5>
										<span><?php echo $fac->interest; ?></span>
										<!-- <span>Bioinformatics</span>
										<span>Image Processing</span> -->
									</div>
									<div>
										<h5><i class = 'icon-calendar'></i>Consultation Hours</h5>
										<span><?php echo $fac->consult_hours; ?></span>
									</div>
									<div>
										<h5><i class = 'icon-envelope'></i>Email</h5>
										<span><?php echo $fac->email; ?></span>
									</div>
									<div>
										<h5><i class = 'icon-globe'></i>Website</h5>
										<span>www.imaprof.me</span>
									</div>
								</div>
							</div>
						</div><!-- /.modal-content -->
					</div><!-- /.modal-dialog -->
				</div>
			<?php } ?>
</div>
<!-- Load Footer-->
<?php $this->load->view('includes/footer', array('tag' => 'landing')); ?>