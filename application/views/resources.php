<!-- Load Header -->
<?php $this->load->view('includes/header'); ?>

	<body data-spy='scroll' data-target='#sidebar'>	

		<!-- Load Navigation Bar-->
		<?php $this->load->view('includes/nav'); ?>

		<div class = 'container-fluid'>
			<div class = 'row-fluid'>
				<div class = 'span4' id = 'sidebar'>
					<ul class = 'nav nav-list affix-top' data-spy = 'affix'>
						<li class="nav-header"><a href="#syllabi">Course Syllabi</a></li>
						<li class="nav-header"><a href="#slides">Lecture Slides</a></li> 
						<li class="nav-header"><a href="#samplex">Sample Exams</a></li>
					</ul>
				</div>
				<div class = 'span8'>
					<section id = 'syllabi'>
						<h1>Course Syllabi</h1>
						<input class = 'filter' type = 'text' />
						<table class = 'table table-bordered table-striped'>
							<thead>
								<tr>
									<th class = 'clear'>Filename</th>
									<th class = 'clear'>Date</th>
									<th class = 'clear'>Size</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>CS131</td>
									<td>12 April 2013</td>
									<td>12Kb</td>
								</tr>
								<tr>
									<td>CS131</td>
									<td>12 April 2013</td>
									<td>12Kb</td>
								</tr>
								<tr>
									<td>CS131</td>
									<td>12 April 2013</td>
									<td>12Kb</td>
								</tr>
								<tr>
									<td>CS131</td>
									<td>12 April 2013</td>
									<td>12Kb</td>
								</tr>	
							</tbody>
						</table>
					</section>
					<section id = 'slides'>
						<h1>Lecture Slides</h1>
						<input class = 'filter' type = 'text' />
						<table class = 'table table-bordered table-striped'>
							<thead>
								<tr>
									<th class = 'clear'>Filename</th>
									<th class = 'clear'>Date</th>
									<th class = 'clear'>Size</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>CS131</td>
									<td>12 April 2013</td>
									<td>12Kb</td>
								</tr>
								<tr>
									<td>CS131</td>
									<td>12 April 2013</td>
									<td>12Kb</td>
								</tr>
								<tr>
									<td>CS131</td>
									<td>12 April 2013</td>
									<td>12Kb</td>
								</tr>
								<tr>
									<td>CS131</td>
									<td>12 April 2013</td>
									<td>12Kb</td>
								</tr>	
							</tbody>
						</table>
					</section>
					<section id = 'samplex'>
						<h1>Sample Exams</h1>
						<input class = 'filter' type = 'text' />
						<table class = 'table table-bordered table-striped'>
							<thead>
								<tr>
									<th class = 'clear'>Filename</th>
									<th class = 'clear'>Date</th>
									<th class = 'clear'>Size</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>CS131</td>
									<td>12 April 2013</td>
									<td>12Kb</td>
								</tr>
								<tr>
									<td>CS131</td>
									<td>12 April 2013</td>
									<td>12Kb</td>
								</tr>
								<tr>
									<td>CS131</td>
									<td>12 April 2013</td>
									<td>12Kb</td>
								</tr>
								<tr>
									<td>CS131</td>
									<td>12 April 2013</td>
									<td>12Kb</td>
								</tr>	
							</tbody>
						</table>
					</section>
				</div>
			</div> 

<!-- Load Footer-->
<?php $this->load->view('includes/footer', array('tag' => 'resources')); ?>