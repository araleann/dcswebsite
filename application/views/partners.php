<!-- Load Header -->
<?php $this->load->view('includes/header'); ?>

	<body data-spy = 'scroll' data-target = '#sidebar' data-offset="200">		
		
		<!-- Load Navigation Bar-->
		<?php $this->load->view('includes/nav'); ?>

		<div class = 'container'>
			<!--<div class = 'col-md-offset-3 col-md-9'>
				<div class="page_header center">
					<h1>Affiliates</h1>
				</div>
			</div>-->
			<div class = 'row'>
				<div class = 'col-md-3 affix' id = 'sidebar'>
					<ul class = 'nav nav-stacked nav-list'>
						<li><a href = '#corp'>Corporate Donors</a></li>
						<li><a href = '#iglap'>IGLAP Partners</a></li> 
					</ul>
				</div>
				<div class = 'col-md-9 content'>
					<section id = 'corp'>
						<h1>Corporate Donors</h1><hr>
						<h3>Accenture</h3>
						<div class="corp"><img class = 'img-thumbnail corp pull-right' src = "<?php echo base_url('/img/accenture.jpg'); ?>"></img></div>
						<p>Accenture is a global management consulting, technology services and outsourcing company serving clients in more than 120 countries. Combining unparalleled experience, comprehensive capabilities across all industries and business functions, and extensive research on the world's most successful companies, Accenture collaborates with clients to help them become high-performance businesses and governments.</p>
						<p>Accenture has extensive relationships with the world's leading companies including 92 of the Fortune Global 100 and more than three quarters of the Fortune Global 500. Accenture prides itself on its 'high performance business' strategy building on their expertise in consulting, technology and outsourcing to help clients perform at the highest levels. </p>
						<h3>IBM</h3>
						<div class="corp"><img class = 'img-thumbnail pull-right' src = "<?php echo base_url('/img/ibm.jpg'); ?>"></img></div>
						<p>International Business Machines Corporation, or IBM, is an American multinational technology and consulting corporation, with headquarters in Armonk, New York, United States. IBM manufactures and markets computer hardware and software, and offers infrastructure, hosting and consulting services in areas ranging from mainframe computers to nanotechnology.</p>
						<p>International Business Machines Corporation, or IBM,is an American multinational technology and consulting corporation, with headquarters in Armonk, New York/ United States. IBM manufactures and markets computer hardware and software, and offers infrastructure, hosting and consulting services in areas ranging from mainframe computers to nanotechnology.</p>
					</section>
					<section id = 'iglap'>
						<h1>IGLAP Partners</h1><hr>
						
						<div class = 'row iglaprow'>
							<?php $count = 0; ?>
								<?php foreach($sponsors as $sponsor) { ?>
									
									<?php if($count < 4 ) { ?>
									<div class = 'col-md-3 iglap'>
										<a href = "<?php echo 'http://'.$sponsor->link;?>" target="_blank" title = "<?php echo $sponsor->name; ?>"><img class="img-thumbnail" src = "<?php echo base_url('files/logos')."/".$sponsor->logo; ?>"></img></a>
									</div>
									<?php $count++; ?>
									
									<?php } else { ?>
										<?php $count = 0; ?>
										</div>
										<div class = 'row iglaprow'>
									<?php } ?>

								<?php } ?>
						</div>
						
					</section>
				</div>
			</div>
		</div>
<!-- Load Footer-->
<?php $this->load->view('includes/footer', array('tag' => 'landing')); ?>
