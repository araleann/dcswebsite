$(function () {
	var body = $('body')
	var _window = $(window)
	var div = $('div.easter')
	if (div.length == 0) {
		div = $('<div class = "easter"></div>')
		body.append(div)
	}
	div.css({
        position: 'fixed',
        bottom: '5px',
        right: '5px',
        height: '20px',
        width: '20px',
        'z-index': 1000,
		cursor: 'pointer'
    }) 
	div.click(popup)
	
	function popup() {
		var overlay = $('<div class = "overlay"></div>')
		overlay.css({
			position: 'fixed',
			width: _window.width(),
			height: _window.height(),
			top: 0,
			left: 0,
			background: 'rgba(100,100,100,0.5)',
			'z-index': 1031,
			color: '#fff',
			'font-size': 18
		})
		function resize() {
			var width = _window.width()
			var height = _window.height()
			overlay.width(width)
			overlay.height(height)
		}
		_window.resize(resize)
		resize()
		
		overlay.click(close)
		function close() {
			overlay.remove()
		}
		
		var img = $('<img src = "'+ (div.attr('data-src') ? div.attr('data-src') : 'img/resource.svg') +'"></img>')
		img.css('float', 'left')
		overlay.append(img)
		 
		var html = "If you're seeing this, good for you! You have discovered a secret. :)" + 
			"This easter egg is, of course, brought to you by the developers of this site.<br />" +
			"Now, amigo, you see, this is not the only easter egg here. This is just the first! " +
			"There are 'things' scatterred here and there (and don't you go looking for them in my codes! cheater!).<br />" +
			"So anyway, this might be a futile task to go looking for easter eggs (it might not be easter yet), but you might find it fun. "+
			"You might also see this as some sort of bragging rights magnet - that you're the first one to discover this(LOL)." +
			"<br/>So, there, off you go!" +
			"<br/>Just a disclaimer, though. We do not intend to destroy this site in including this in the source code. We just want to impart fun!"
		overlay.append(html)
		
		body.append(overlay)
	} 
})