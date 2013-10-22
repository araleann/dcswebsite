function init() { 
	$('#tfaculty').tablesorter()
	$('#tstaff').tablesorter() 
	  
	function resize () {
		var height = $(window).height()
		$('body').height(height - 280) 
	}
	resize()
	$(window).resize(resize)
	
	function isFooterShown() {
		if ($('footer').is(':appeared')) {
			$('#sidebar').addClass('hidden')
		} else {
			$('#sidebar').removeClass('hidden')
		}
	}
	setInterval(isFooterShown, 300)
}
$(document).ready(init)