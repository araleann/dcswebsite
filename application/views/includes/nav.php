<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
  <!-- Brand and toggle get grouped for better mobile display -->
  <div class="container">
  
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
  </div>

  <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar-collapse navbar-ex1-collapse">
    <ul class="nav navbar-nav">
		<li><a href = "<?php echo site_url('main'); ?>" class="active">Home</a></li>
		<li><a href = "<?php echo site_url('news'); ?>">News</a></li>
		<li><a href = "<?php echo site_url('people'); ?>">People</a></li>
		<li><a href = "<?php echo site_url('programs'); ?>">Programs</a></li>
		<li><a href = "<?php echo site_url('main/research'); ?>">Research</a></li>
		<li><a href = "<?php echo site_url('partners'); ?>">Affiliates</a></li>
		<li><a href = "<?php echo site_url('contact'); ?>">Contact Us</a></li>
		<li><a href = "<?php echo site_url('main/about'); ?>">About</a></li>
    </ul>
	
	<a class="navbar-brand navbar-right" href="#">
		<div class="deptOf">Department of</div>
		<div class="cs">Computer Science</div>
	</a>
  </div><!-- /.navbar-collapse -->
  
  </div>
</nav>