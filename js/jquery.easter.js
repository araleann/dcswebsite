$(function() {
    var easter = $('div.easter')
	if (easter.length == 0) {
		easter = $('<div class = "easter"></div>')
		$('body').append(easter)
	}
		 
    easter.css({
        position: 'fixed',
        bottom: '5px',
        left: '500px',
        height: '20px',
        width: '20px',
        'z-index': 1000,
		cursor: 'pointer'
    }) 
    easter.prop('title', 'Click me!')
    
    easter.click(function () {
        var img = $('<img></img>')
        img.prop('src', 'img/animated_snail.gif')
        img.css({
            position: 'fixed',
            bottom: '60px',
            left: '0',
            height: 100, 
            'z-index': 10
        })
        easter.append(img)
    })
})