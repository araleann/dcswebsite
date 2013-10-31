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
				<div class="col-md-6 well">
					<div class="panel panel-default">
					  <div class="panel-heading">
					    <h2 class="panel-title">News</h2>
					  </div>
					  <div class="panel-body list-group">
						<a href="#" class="list-group-item">Attention Graduating Students, the Enrollment...</a>
						<a href="#" class="list-group-item">No Classes on Monday because of ongoing Enrollment</a>
						<a href="#" class="list-group-item">CS165 under Sir Edgar Felizmenio will be dissolved...</a>
						</ul>
					  </div>
					</div>
				</div>
				
				<div class="col-md-6 well">
					<div class="panel panel-danger">
					  <div class="panel-heading">
					    <h2 class="panel-title">Announcements</h2>
					  </div>
					  <div class="panel-body list-group">
						<a href="#" class="list-group-item">Attention Graduating Students, the Enrollment...</a>
						<a href="#" class="list-group-item">No Classes on Monday because of ongoing Enrollment</a>
						<a href="#" class="list-group-item">CS165 under Sir Edgar Felizmenio will be dissolved...</a>
						</ul>
					  </div>
					</div>
				</div>
			</div>
		</div>
<!-- Load Footer-->
<?php $this->load->view('includes/footer', array('tag' =>'landing')); ?>