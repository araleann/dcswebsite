<footer data-appear-top-offset=-100>
	<div class="container">
		<div class="col-md-3 col-md-offset-1">
			<h4>Navigate</h4>
			<hr>
			<ul class="fa-ul" style="line-height:180%;margin-left:0px;margin-top:10px">
				<li><a href = "<?php echo base_url(); ?>">Home</a></li>
				<li><a href = "<?php echo site_url('main/partners'); ?>">Partners</a></li>
				<li><a href = "<?php echo site_url('main/people'); ?>">People</a></li>
				<li><a href = "<?php echo site_url('main/research'); ?>">Research</a></li>
				<li><a href = "<?php echo site_url('main/contact'); ?>">Contact Us</a></li>
				<li><a href = "<?php echo site_url('main/about'); ?>">About</a></li>
			</ul>
		</div>
		<div class="col-md-3">
			<h4>Quick Links</h4>
			<hr>
			<ul class="fa-ul" style="line-height:180%;margin-left:0px;margin-top:10px">
				<li><a href = 'http://up.edu.ph'>UP System</a></li>
				<li><a href = 'http://upd.edu.ph'>UP Diliman</a></li>
				<li><a href = 'http://coe.upd.edu.ph'>UP College of Engineering</a></li>
				<li><a href = 'http://crs.upd.edu.ph'>UP CRS</a></li>
				<li><a href = 'http://mail.up.edu.ph'>UP Webmail</a></li>
			</ul>
		</div>
		<div class="col-md-4">
			<h4>Contact Information</h4>
			<hr>
			<ul class="fa-ul" style="line-height:180%;margin-top:10px">
			  <li><i class="fa-li fa fa-home"></i>Velasquez St.</li>
			  <li>University of the Philippines</li>
			  <li>Diliman, Quezon City, Philippines</li>
			  <li>1101</li>
			  <li><i class="fa-li fa fa-phone"></i>+632 123 4567</li>
			  <li><i class="fa-li fa fa-envelope"></i>email@domain.com</li>
			</ul>
		</div>
	</div>
	<div class="container">
		<p class="center copyright">Copyright 2013 by Department of Computer Science. All Rights Reserved.</p>
	</div>
</footer>
</body>


	<script type = 'text/javascript' src = "<?php echo base_url('js/jquery.js'); ?>"></script>
	<script type = 'text/javascript' src = "<?php echo base_url('js/bootstrap.min.js'); ?>"></script> 
	<script type = 'text/javascript' src = "<?php echo base_url('js/jquery.appear.js'); ?>"></script>
	<script type = 'text/javascript' src = "<?php echo base_url('js/holder.js'); ?>"></script>

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