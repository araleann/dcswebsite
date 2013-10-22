<!-- Load Header -->
<?php $this->load->view('includes/header'); ?>

	<body data-spy = 'scroll' data-target = '#sidebar'>	
		
		<!-- Load Navigation Bar-->
		<?php $this->load->view('includes/nav'); ?>

		<div class = 'container-fluid'>
			<div class = 'row-fluid'>
				<div class = 'span4'>
					<ul class = 'nav nav-list affix-top' data-spy = 'affix'>
						<li class = 'nav-header'>
							<form class = 'form-horizontal' method = "post" action="<?php echo site_url('contact/email'); ?>">
									<div class = 'control-group'>
										<div class = 'controls'>		
											<h1 id ='contact' >Contact us</h1>
											<hr id ='contact-line'>
											<label class = 'control-label' for = 'Name'>Name</label>
											<input type = 'text' id = 'Name' name = 'name' required></input>
										</div>
									</div>
									<div class = 'control-group'>
										<div class = 'controls'>
											<label class = 'control-label' for = 'Email'>Email</label>
											<input type = 'email' id = 'Email' name = 'email' required></input>
										</div>
									</div>
									<div class = 'control-group'>
										<div class = 'controls'>
											<label class = 'control-label' for = 'Message'>Message</label>
											<textarea type = 'text' id = 'msg' name = 'msg' required></textarea>
										</div>
									</div>
									<div class = 'control-group'> 
										<div class = 'controls'>
										  <input type = 'submit' id = 'subm' class = 'btn'></input>
										</div>
									</div>
							</form>
						</li>
					</ul>
				</div>
				<div class = 'span7'>
					<br>
					<img src = "http://127.0.0.1/git_dcsw/img/IMG_0845.png" width = '100%'>
					<iframe frameborder = '0' scrolling = 'no' marginheight = '0' marginwidth = '0' src='https://maps.google.com.ph/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=UP+Dept+of+Computer+Science,+P.+Velasquez+St,+Quezon+City&amp;aq=0&amp;oq=Depa&amp;sll=12.07895,121.95925&amp;sspn=18.867159,28.256836&amp;ie=UTF8&amp;hq=&amp;hnear=UP+Dept+of+Computer+Science,+P.+Velasquez+St,+Diliman,+Quezon+City,+Metro+Manila&amp;t=m&amp;z=14&amp;iwloc=A&amp;output=embed' style = 'height: 316px;'>
					</iframe>
				</div>
			</div>

<!-- Load Footer-->
<?php $this->load->view('includes/footer', array('tag' => 'contact')); ?>