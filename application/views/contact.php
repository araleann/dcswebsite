<!-- Load Header -->
<?php $this->load->view('includes/header'); ?>

	<body data-spy = 'scroll' data-target = '#sidebar'>	
		
		<!-- Load Navigation Bar-->
		<?php $this->load->view('includes/nav'); ?>

		<div class = 'container'>
			<div class = 'row'>
				<div class = 'col-md-4'>
					<form class = 'form-horizontal' method = "post" action="<?php echo site_url('contact/email'); ?>">
						<div class = 'control-group'>
							<label class = 'control-label' for = 'Name'>Name</label>
							<div class = 'controls'>
							  <input type = 'text' id = 'Name' name = 'name' required></input>
							</div>
						</div>		
						<div class = 'control-group'>
							<label class = 'control-label' for = 'Email'>Email</label>
							<div class = 'controls'>
							  <input type = 'email' id = 'Email' name = 'email' required></input>
							</div>
						</div>
						<div class = 'control-group'>
							<label class = 'control-label' for = 'Message'>Message</label>
							<div class = 'controls'>
							  <textarea type = 'text' id = 'msg' name = 'msg' required></textarea>
							</div>
						</div>
						<div class = 'control-group'> 
							<div class = 'controls'>
							  <input type = 'submit' class = 'btn'></input>
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
					<iframe frameborder = '0' scrolling = 'no' marginheight = '0' marginwidth = '0' src='https://maps.google.com.ph/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=UP+Dept+of+Computer+Science,+P.+Velasquez+St,+Quezon+City&amp;aq=0&amp;oq=Depa&amp;sll=12.07895,121.95925&amp;sspn=18.867159,28.256836&amp;ie=UTF8&amp;hq=&amp;hnear=UP+Dept+of+Computer+Science,+P.+Velasquez+St,+Diliman,+Quezon+City,+Metro+Manila&amp;t=m&amp;z=14&amp;iwloc=A&amp;output=embed' style = 'height: 316px;'>
					</iframe>
				</div>
			</div>
		</div>

<!-- Load Footer-->
<?php $this->load->view('includes/footer', array('tag' => 'contact')); ?>