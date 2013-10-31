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
			
			<div class = 'row padded'>
				<div class = 'col-md-2 start-block maroon'>
					<h1>News</h1>
					<a href = ''>More News &rarr;</a>
				</div>
				<div class = 'col-md-10 end-block'>
					<div class = 'full-height'>
						<div class = 'viewport'> 
							<div class = 'wrapper'>
								<div>
									<h6>Some news has been added! 1<h6>
									<p class = 'details'>
									As of now, a handful of news articles had been added...
									</p class = 'details'>
									<p>
									<a href = ''>Read more &rarr;</a>
									</p>
								</div>
								<div>
									<h6>Some news has been added! 2<h6>
									<p class = 'details'>
									As of now, a handful of news articles had been added...
									</p>
									<p>
									<a href = ''>Read more &rarr;</a>
									</p>
								</div>
								<div>
									<h6>Some news has been added! 3<h6>
									<p class = 'details'>
									As of now, a handful of news articles had been added...
									</p>
									<p>
									<a href = ''>Read more &rarr;</a>
									</p>
								</div>
								<div>
									<h6>Some news has been added! 4<h6>
									<p class = 'details'>
									As of now, a handful of news articles had been added...
									</p>
									<p>
									<a href = ''>Read more &rarr;</a>
									</p>
								</div>
								<div>
									<h6>Some news has been added! 5<h6>
									<p class = 'details'>
									As of now, a handful of news articles had been added...
									</p>
									<p>
									<a href = ''>Read more &rarr;</a>
									</p>
								</div>
								<div>
									<h6>Some news has been added! 6<h6>
									<p class = 'details'>
									As of now, a handful of news articles had been added...
									</p>
									<p>
									<a href = ''>Read more &rarr;</a>
									</p>
								</div>
								<div>
									<h6>Some news has been added! 7<h6>
									<p class = 'details'>
									As of now, a handful of news articles had been added...
									</p>
									<p>
									<a href = ''>Read more &rarr;</a>
									</p>
								</div>
								<div>
									<h6>Some news has been added! 8<h6>
									<p class = 'details'>
									As of now, a handful of news articles had been added...
									</p>
									<p>
									<a href = ''>Read more &rarr;</a>
									</p>
								</div>
							</div> 
						</div>
						<div class = 'arrows'>
							<div>
								&larr;
							</div>
							<div>
								&rarr;
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class = 'row padded'>
				<div class = 'col-md-2 start-block orange'>
					<h1>Events</h1>
					<a href = ''>More Events &rarr;</a>
				</div>
				<div class = 'col-md-10 end-block'>
					<div class = 'full-height'>
						<div class = 'viewport'> 
							<div class = 'wrapper'>
								<div>
									<h6>13 April 2013<h6>
									<p>
									World Something Day
									</p> 
								</div>
								<div>
									<h6>14 April 2013<h6>
									<p>
									Tope's Day
									</p> 
								</div>
								<div>
									<h6>15 April 2013<h6>
									<p>
									Some Day
									</p> 
								</div> 
								<div>
									<h6>20 April 2013<h6>
									<p>
									Grad Detail 2
									</p> 
								</div> 
								<div>
									<h6>28 April 2013<h6>
									<p>
									102th Commencement Exercises
									</p> 
								</div> 
							</div> 
						</div>
						<div class = 'arrows'>
							<div>
								&larr;
							</div>
							<div>
								&rarr;
							</div>
						</div>
					</div>
				</div>
			</div> 
		</div>
<!-- Load Footer-->
<?php $this->load->view('includes/footer', array('tag' =>'landing')); ?>