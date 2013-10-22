<footer class = 'full-width' data-appear-top-offset=-100>
				<div class = 'row-fluid'>
					<div>
						<h5>Navigate</h5>
						<div><small><a href = "<?php echo base_url(); ?>">Home</a></small></div>
						<div><small><a href = "<?php echo site_url('main/news'); ?>">News</a></small></div>
						<div><small><a href = "<?php echo site_url('main/partners'); ?>">Partners</a></small></div>
						<div><small><a href = "<?php echo site_url('main/people'); ?>">People</a></small></div>
						<div><small><a href = "<?php echo site_url('main/research'); ?>">Research</a></small></div> 
						<div><small><a href = "<?php echo site_url('main/resources'); ?>">Resources</a></small></div>
						<div><small><a href = 'search'>Search</a></small></div> 
					</div>
					<div>
						<h5>Quick Links</h5>
						<div><small><a href = 'http://up.edu.ph'>UP System</a></small></div>
						<div><small><a href = 'http://upd.edu.ph'>UP Diliman</a></small></div>
						<div><small><a href = 'http://coe.upd.edu.ph'>UP College of Engineering</a></small></div>
						<div><small><a href = 'http://crs.upd.edu.ph'>CRS</a></small></div>
						<div><small><a href = 'http://mail.up.edu.ph'>UP Webmail</a></small></div>
					</div>
					<div>
						<h5>Contact Information</h5>
						<div><small><i class = 'icon-home icon-white'></i>Velasquez St.</small></div>
						<div><small>University of the Philippines</small></div>
						<div><small>Diliman, Quezon City, Philippines</small></div>
						<div><small>1101</small></div>
						<div><small>+632 123 4567</small></div>
						<div><small><i class = 'icon-envelope icon-white'></i>email@domain.com</small></div> 
					</div>
				</div>
			</footer>
		</div>
	</body>
	<script type = 'text/javascript' src = "<?php echo base_url('js/jquery.js'); ?>"></script>
	<script type = 'text/javascript' src = "<?php echo base_url('js/bootstrap.min.js'); ?>"></script> 
	<script type = 'text/javascript' src = "<?php echo base_url('js/jquery.appear.js'); ?>"></script>

	<?php if ($tag == 'landing') { ?>
			<script type = 'text/javascript' src = "<?php echo base_url('js/supersized.js'); ?>"></script>  
			<script type = 'text/javascript' src = "<?php echo base_url('js/supersized.shutter.js'); ?>"></script> 
			<script type = 'text/javascript' src = "<?php echo base_url('js/jquery.easter.2.js'); ?>"></script> 
			<script type = 'text/javascript' src = "<?php echo base_url('js/index.js'); ?>"></script>

	<?php } else if ($tag == 'news' || $tag == 'resources') { ?>
			<script type = 'text/javascript' src = "<?php echo base_url('js/jquery.tablesorter.js'); ?>"></script>
			<script type = 'text/javascript' src = "<?php echo base_url('js/style.js'); ?>"></script>
			<script type = 'text/javascript' src = "<?php echo base_url('js/resources.js'); ?>"></script>

	<?php } else if ($tag == 'people' || $tag == 'programs' || $tag == 'partners' || $tag == 'contact') { ?>
			<script type = 'text/javascript' src = "<?php echo base_url('js/jquery.tablesorter.js'); ?>"></script>
			<script type = 'text/javascript' src = "<?php echo base_url('js/jquery.easter.js'); ?>"></script>
			<script type = 'text/javascript' src = "<?php echo base_url('js/style.js'); ?>"></script>

	<?php } else if ($tag == 'research') { ?>
			<script type = 'text/javascript' src = "<?php echo base_url('js/jquery.tablesorter.js'); ?>"></script>
			<script type = 'text/javascript' src = "<?php echo base_url('js/style.js'); ?>"></script>

	<?php } ?>

	
	
	

	
	
	
</html>