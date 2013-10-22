function init() {  
	//news
	var height = $('body').height() 
	$('ul.image-slider').height(height - 42)
	 
	$.supersized({
  
		// Functionality
		slideshow               :   1,			// Slideshow on/off
		autoplay				:	1,			// Slideshow starts playing automatically
		start_slide             :   1,			// Start slide (0 is random)
		stop_loop				:	0,			// Pauses slideshow on last slide
		random					: 	0,			// Randomize slide order (Ignores start slide)
		slide_interval          :   5000,		// Length between transitions
		transition              :   6, 			// 0-None, 1-Fade, 2-Slide Top, 3-Slide Right, 4-Slide Bottom, 5-Slide Left, 6-Carousel Right, 7-Carousel Left
		transition_speed		:	1000,		// Speed of transition
		new_window				:	1,			// Image links open in new window/tab
		pause_hover             :   0,			// Pause slideshow on hover
		keyboard_nav            :   0,			// Keyboard navigation on/off
		performance				:	3,			// 0-Normal, 1-Hybrid speed/quality, 2-Optimizes image quality, 3-Optimizes transition speed // (Only works for Firefox/IE, not Webkit)
		image_protect			:	1,			// Disables image dragging and right click with Javascript
    
		// Size & Position						   
		min_width		        :   0,			// Min width allowed (in pixels)
		min_height		        :   0,			// Min height allowed (in pixels)
		vertical_center         :   1,			// Vertically center background
		horizontal_center       :   1,			// Horizontally center background
		fit_always				:	0,			// Image will never exceed browser width or height (Ignores min. dimensions)
		fit_portrait         	:   0,			// Portrait images will not exceed browser height
		fit_landscape			:   0,			// Landscape images will not exceed browser width
    
		// Components							
		slide_links				:	'name',	// Individual links for each slide (Options: false, 'num', 'name', 'blank')
		thumb_links				:	1,			// Individual thumb links for each slide
		thumbnail_navigation    :   1,			// Thumbnail navigation
		slides : slides,
    
		// Theme Options			   
		progress_bar			:	1,			// Timer for each slide							
		mouse_scrub				:	0,
		
		//other
		browserwidth			: 	$('body').width(),
		browserheight			: 	height
	})
	$('#prevslide').click(function () {
		api.prevSlide()
	})
	$('#nextslide').click(function () {
		api.nextSlide()
	})
	
	//carousel
	$('div.full-height').each(function () {
		var _this = $(this)
		var divItems = $('div.wrapper div', _this)
		var wrapper = $('div.wrapper', _this)
		var left = $('div.arrows div:first-child', _this)
		var right = $('div.arrows div:last-child', _this)
		
		var current = 0
		var length = divItems.length
		
		wrapper.css('width', '360%')
		
		left.addClass('inactive')
		if (length <= 4)
			right.addClass('inactive')
			
		right.click(function () {
			//alert('left')
			if (length - current <= 4) {
				right.addClass('inactive')
				return 
			}
			wrapper.animate({left: '-=25%'}, 600, 'linear')
			current++
			right.removeClass('inactive')
			if (length > 4)
				left.removeClass('inactive')
			if (length - current == 4) {
				right.addClass('inactive')
			}
		})
		
		left.click(function () {
			if (current <= 0) {
				left.addClass('inactive')
				return 
			}
			wrapper.animate({left: '+=25%'}) 
			current-- 
			left.removeClass('inactive')
			if (length > 4)
				right.removeClass('inactive')
			if (current == 0) {
				left.addClass('inactive')
			}
		})
	})
}
$(document).ready(init)