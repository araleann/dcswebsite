<!-- Load Header -->
<?php $this->load->view('includes/header'); ?>

<body data-spy = 'scroll' data-target = '#sidebar'>		
	
		<script type = 'text/javascript'>
			var slides = [			// Slideshow Images 
				{image : 'img/IMG_0845.png', title: 'UP Alumni Engineers Centennial Hall, Velasquez St., UP Diliman, Quezon City, Philippines.', thumb: ''},  
				{image : 'img/IMG_0851.png', title: 'In the Department of Computer Science, out vision is to be a world-class research and teaching institution in the field of Computer Science that serves the interest of the country.', thumb: ''},
				{image : 'img/IMG_0854.png', title: 'The Department is surrounded by lush greenery and provides a healthy environment for learning.', thumb: ''}
			]
		</script>

		<!-- Load Navigation Bar-->
		<?php $this->load->view('includes/nav'); ?>

		<ul class = 'image-slider' id = 'supersized'> 
		
			<span id = 'prevslide' class = 'load-item' style = 'display: block;'></span>
			<span id = 'nextslide' class = 'load-item' style = 'display: block;'></span> 	
			<div id = 'controls-wrapper' class = 'load-item' style = 'display: block;'>
			<div id = 'controls'>  
				<div id = 'slidecaption'></div> 
				
			</div>
		</ul>
	</div>
		<div class = 'container-fluid normal'>
			<div class = 'row-fluid padded'> 
				<h1>Recent News</h1>
				<p>this part under construction.</p>
			</div>
			<div class = 'row-fluid padded'>
				<div class = 'span2 start-block maroon'>
					<h1>News</h1>
					<a href = ''>More News &rarr;</a>
				</div>
				<div class = 'span10 end-block'>
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
			<div class = 'row-fluid padded'>
				<div class = 'span2 start-block orange'>
					<h1>Events</h1>
					<a href = ''>More Events &rarr;</a>
				</div>
				<div class = 'span10 end-block'>
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

<!-- Load Footer-->
<?php $this->load->view('includes/footer', array('tag' =>'landing')); ?>