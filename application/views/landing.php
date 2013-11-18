<!-- Load Header -->
<?php $this->load->view('includes/header'); ?>

<body>		
		<!-- Load Navigation Bar-->
		<?php $this->load->view('includes/nav'); ?>
		
		<div id="myCarousel" class="carousel slide carousel-fade" data-ride="carousel">
		  <!-- Indicators -->
		  <!--<ol class="carousel-indicators">
		    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
		    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
		    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
		  </ol>-->

		  <!-- Wrapper for slides -->
		  <div class="carousel-inner">
		    <div class="item active">
		      <img src="holder.js/1200x400/gray" >
		      <div class="carousel-caption">
		      <p style="color: black;">item 1<p>
		      </div>
		    </div>
		    <div class="item">
		      <img src="holder.js/1200x400/industrial" >
		      <div class="carousel-caption">
		      <p style="color: black;">item 2<p>
		      </div>
		    </div>
		    <div class="item">
		      <img src="holder.js/1200x400/social" >
		      <div class="carousel-caption">
		      <p style="color: black;">item 3<p>
		      </div>
		    </div>
		  </div>

		  <!-- Controls -->
		  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
		    
		  </a>
		  <a class="right carousel-control" href="#myCarousel" data-slide="next">
		    
		  </a>
		</div>
		
		<div class = 'container'> 
			<div class = 'row'>
				<div class="col-md-6">
					<div class="panel panel-primary">
					  <div class="panel-heading">
					    <h1 class="panel-title">News</h1>
					  </div>
					<div class="panel-body">
						<div class='panel panel-info'>
							<div class='panel-heading'><a href='#'><h2 class='panel-title'>Lorem Ipsum</h3></a></div>
							<div class='panel-body'>
							<p>
							<img src='http://placehold.it/128x128' class='img-thumbnail img-responsive pull-right'>
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tristique ultrices purus, nec malesuada mauris laoreet placerat. Mauris ultricies eu felis id auctor. Integer quis convallis turpis. Vivamus eget est id neque hendrerit suscipit vitae sit amet tortor. Fusce eu dignissim mauris, id fringilla lacus. Proin posuere accumsan lorem, quis tincidunt orci dignissim a. Nullam viverra ligula eget magna sodales faucibus. Praesent vel ultrices turpis. Cras vitae congue purus. Sed et laoreet lorem, non scelerisque sapien.
							</p><hr/>
							<a href='#' class='pull-right'>Read More &rarr;</a>
							</div>

							<ul class='list-group'>
								<a href="#" class="list-group-item"><strong>No Classes on Monday because of ongoing Enrollment</strong></a>
								<a href="#" class="list-group-item"><strong>CS165 under Sir Edgar Felizmenio will be dissolved...</strong></a>
							</ul>
						</div>
						<a href='#' class='pull-right'><strong>See All News &rarr;</strong></a>
					  </div>
					</div>
				</div>
				
				<div class="col-md-6">
					<div class="panel panel-danger">
					  <div class="panel-heading">
					    <h1 class="panel-title">Announcements</h1>
					  </div>
					  <div class="panel-body">
						<div class='alert alert-danger'><a href='#' class='alert-link'>Attention Graduating Students, the Enrollment...</a></div><hr/>
						<div class='alert alert-danger'><a href='#' class='alert-link'>No Classes on Monday because of ongoing Enrollment</a></div><hr/>
						<div class='alert alert-danger'><a href='#' class='alert-link'>CS165 under Sir Edgar Felizmenio will be dissolved...</a></div>
						
						<span class='pull-right'><a href='#'>See All Announcements&rarr;</a></span>
					  </div>
					</div>
				</div>
				
			</div>
				
			<div class='panel panel-info'>
				<div class='panel-heading'>
					<h1 class='panel-title'>Events</h1>
				</div>
				<div class='panel-body'>
					<div class='row'>
						<div class='col-md-4'>
							<h3>November 4-6, 2013</h3>
							<p>Enrollment for 2nd Semester, A.Y. 2013-2014 at the University of the Philippines-Diliman Campus will start.</p>
						</div>
						<div class='col-md-4'>
							<h3>December 25, 2013</h3>
							<p>Christmas Day</p>
						</div>
						<div class='col-md-4'>
							<h3>January 1, 2013</h3>
							<p>New Year.</p>
						</div>
					</div>
					<span class='pull-right'><a href='#'>See All Events&rarr;</a></span>
				</div>
			</div> <!-- end of panel -->
					
			
		</div>
<!-- Load Footer-->
<?php $this->load->view('includes/footer', array('tag' =>'landing')); ?>