<!-- Load Header -->
<?php $this->load->view('includes/header'); ?>

	<body data-spy = 'scroll' data-target = '#sidebar' data-offset="200">		
		
		<!-- Load Navigation Bar-->
		<?php $this->load->view('includes/nav'); ?>

		<div class = 'container'>
			<div class = 'row'>
				<div class = 'col-md-3 affix' id = 'sidebar'>
					<ul class = 'nav nav-stacked nav-list'>
						<li class = 'nav-header'><a href = '#iglap'>IGLAP Partners</a></li> 
						<li class = 'nav-header'><a href = '#corp'>Corporate Donors</a></li>
					</ul>
				</div>
				<div class = 'col-md-9'>
					<section id = 'iglap'>
						<h1>IGLAP Partners</h1>
						
						<div class = 'row-fluid'>
							<?php $count = 0; ?>
								<?php foreach($sponsors as $sponsor) { ?>
									
									<?php if($count < 4 ) { ?>
									<div class = 'span3 iglap '>
										
										<a href = "<?php echo 'http://'.$sponsor->link;?>" target="_blank" title = "<?php echo $sponsor->name; ?>"><img src = "<?php echo base_url('files/logos')."/".$sponsor->logo; ?>"></img></a>
									</div>
								    <?php $count++; ?>
									<?php } else { ?>
									    <?php $count = 0; ?>
										</div>
										<div class = 'row-fluid'>
									 
									<?php } ?>

							    <?php } ?>
					
						</div>
						
					</section>
					<section id = 'corp'>
						<h1>Corporate Donors</h1>
						<h3>Accenture</h3>
						<img class = 'img-polaroid corp pull-left' src = "<?php echo base_url('/img/accenture.jpg'); ?>"></img>
						<p>Accenture is a global management consulting, technology services and outsourcing company serving clients in more than 120 countries. Combining unparalleled experience, comprehensive capabilities across all industries and business functions, and extensive research on the world's most successful companies, Accenture collaborates with clients to help them become high-performance businesses and governments.</p>
						<p>Accenture has extensive relationships with the world's leading companies including 92 of the Fortune Global 100 and more than three quarters of the Fortune Global 500. Accenture prides itself on its 'high performance business' strategy building on their expertise in consulting, technology and outsourcing to help clients perform at the highest levels. </p>
						<h3>IBM</h3>
						<img class = 'img-polaroid corp pull-left' src = "<?php echo base_url('/img/ibm.jpg'); ?>"></img>
						<p>International Business Machines Corporation, or IBM, is an American multinational technology and consulting corporation, with headquarters in Armonk, New York, United States. IBM manufactures and markets computer hardware and software, and offers infrastructure, hosting and consulting services in areas ranging from mainframe computers to nanotechnology.</p>
						<p>International Business Machines Corporation, or IBM,is an American multinational technology and consulting corporation, with headquarters in Armonk, New York/ United States. IBM manufactures and markets computer hardware and software, and offers infrastructure, hosting and consulting services in areas ranging from mainframe computers to nanotechnology.</p>
					</section>
					<!-- <section id = 'private'>
						<h1>Private Sponsors</h1>
						<ul>
							<li>Khu Pong</li>
							<li>Ako A.  Ko</li>
						</ul>
					</section> -->
				</div>
			</div>

<!-- Load Footer-->
<?php $this->load->view('includes/footer', array('tag' => 'partners')); ?>
