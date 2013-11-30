<!-- Load Header -->
<?php $this->load->view('includes/header'); ?>

<body>		
		
		<!-- Load Navigation Bar-->
		<?php $this->load->view('includes/nav'); ?>

	<div class="container">
		<h2 class="center">Events</h2>
		<div class="col-md-offset-2 col-md-8 content">
			<?php
				$data = array(
					3  => 'http://example.com/news/article/2006/03/',
					7  => 'http://example.com/news/article/2006/07/',
					13 => 'http://example.com/news/article/2006/13/',
					26 => 'http://example.com/news/article/2006/26/'
				);

				echo $this->calendar->generate($this->uri->segment(3), $this->uri->segment(4), $data);
			?>
		</div>
	</div>
	<div class="container ">
		<div class="col-md-offset-2 col-md-8"><h3>Jump to</h3></div>
	</div>

	<div class="modal" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">Insert Selected Date Here</h4>
      </div>
      <div class="modal-body">
        <ul>
        <li>Event 1</li>
		<li>Event 2</li>
		<li>Event 3</li>
		</ul>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!-- Load Footer-->
<?php $this->load->view('includes/footer', array('tag' => 'landing')); ?>