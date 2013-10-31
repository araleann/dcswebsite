<!-- Load Header -->
<?php $this->load->view('includes/header'); ?>

	<body data-spy = 'scroll' data-target = '#sidebar'>	
		
		<!-- Load Navigation Bar-->
		<?php $this->load->view('includes/nav'); ?>

		<div class = 'container'>
			<div class = 'row'>
				<div class = 'col-md-4 content'>
					<h1>Contact Us</h1><hr>
					<form class = 'form-horizontal' method = "post" action="<?php echo site_url('contact/email'); ?>" role="form">
						<div class = 'form-group'>
							<label class = 'col-sm-3 control-label' for = 'Name'>Name</label>
							<div class = 'col-sm-9'>
							  <input class="form-control" type = 'text' id = 'Name' name = 'name' required></input>
							</div>
						</div>		
						<div class = 'form-group'>
							<label class = 'col-sm-3 control-label' for = 'Email'>Email</label>
							<div class = 'col-sm-9'>
							  <input class="form-control" type = 'email' id = 'Email' name = 'email' required></input>
							</div>
						</div>
						<div class = 'form-group'>
							<label class = 'col-sm-3 control-label' for = 'Message'>Message</label>
							<div class = 'col-sm-9'>
							  <textarea class="form-control" rows="5" type = 'text' id = 'msg' name = 'msg' required></textarea>
							</div>
						</div>
						<div class = 'form-group'>
							<div class="col-sm-offset-3 col-sm-9">
								<button type="submit" class="btn btn-default">Submit</button>
							</div>
						</div>
					</form>
					<div class = 'social'>
						<img src = "<?php echo base_url('/img/fb.png'); ?>"></img>
						<a href = ''>facebook.com/dcs</a>
					</div>
					<div class = 'social'>
						<img src = "<?php echo base_url('/img/google.png'); ?>"></img>
						<a href = ''>gplus.com/dcs</a>
					</div>
					<div class = 'social'>
						<img src = "<?php echo base_url('/img/twitter.png'); ?>"></img>
						<a href = ''>twitter.com/dcs</a>
					</div>
				</div>
				<div class = 'col-md-8'>
					<img src="holder.js/725x225">
					<br />
					<iframe width="725" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com.ph/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=UP+Department++of+Computer+Science&amp;aq=&amp;sll=14.683961,121.062159&amp;sspn=0.201922,0.308647&amp;ie=UTF8&amp;hq=UP+Department++of+Computer+Science&amp;hnear=&amp;t=m&amp;cid=5525695897160382081&amp;ll=14.662398,121.070881&amp;spn=0.029062,0.036478&amp;z=14&amp;iwloc=A&amp;output=embed"></iframe>
				</div>
			</div>
		</div>

<!-- Load Footer-->
<?php $this->load->view('includes/footer', array('tag' => 'contact')); ?>