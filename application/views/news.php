<!-- Load Header -->
<?php $this->load->view('includes/header'); ?>

	<body data-spy = 'scroll' data-target = '#sidebar'>		
		
		<!-- Load Navigation Bar-->
		<?php $this->load->view('includes/nav'); ?>
		
		<div class = 'container-fluid'>
			<div class = 'row-fluid'>
				<div class = 'span4' id = 'sidebar'>
					<ul class = 'nav nav-list affix-top' data-spy = 'affix'>
						<li class = 'nav-header'>2013</li>
						<li><a href = '#april2013'>April</a></li>
						<li><a href = '#march2013'>March</a></li> 
					</ul>
				</div>
				<div class = 'span8'>
					<section id = 'april2013'>
						<h1 class = 'center'>April 2013</h1>
						<h2>News #1 </h2>
						<div>
							<span><i class = 'icon-calendar'></i><small>13 April 2013</small></span>
							<span><i class = 'icon-user'></i><small>Author</small></span>
						</div>
						<p>
							Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. 
						</p>
						<p>
							<a href = '#'>Read more &rarr;</a>
						</p>
						<h2>News #2 </h2>
						<div>
							<span><i class = 'icon-calendar'></i><small>13 April 2013</small></span>
							<span><i class = 'icon-user'></i><small>Author</small></span>
						</div>
						<p>
							Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. 
						</p>
						<p>
							<a href = '#'>Read more &rarr;</a>
						</p>
					</section>	
					<section id = 'march2013'>
						<h1 class = 'center'>March 2013</h1>
						<h2>News #1 </h2>
						<div>
							<span><i class = 'icon-calendar'></i><small>13 April 2013</small></span>
							<span><i class = 'icon-user'></i><small>Author</small></span>
						</div>
						<p>
							Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. 
						</p>
						<p>
							<a href = '#'>Read more &rarr;</a>
						</p>
						<h2>News #2 </h2>
						<div>
							<span><i class = 'icon-calendar'></i><small>13 April 2013</small></span>
							<span><i class = 'icon-user'></i><small>Author</small></span>
						</div>
						<p>
							Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. 
						</p>
						<p>
							<a href = '#'>Read more &rarr;</a>
						</p>
					</section>	
				</div>
			</div> 

<!-- Load Footer-->
<?php $this->load->view('includes/footer', array('tag' => 'news')); ?>