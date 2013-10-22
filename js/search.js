function filter () {
	var result = $('div.results')
	var url = $('form').prop('action')
	var cx = $('input[name="cx"]').val()
	var key = $('input[name="key"]').val()
	var q = $('input[name="q"]').val()
	$.ajax({
		url: url,
		data: {
			cx: cx,
			key: key,
			q: q
		}, 
		success: function (data) { 
			console.log(data)
			result.children().remove()
			for (var i = 0; i < data.items.length; i++) {
				var h4 = $('<h4></h4>')
				h4.append(data.items[i].title)
				var a = $('<a></a>')
				a.attr('href', data.items[i].link)
				a.append(data.items[i].link)
				var p = $('<p></p>')
				p.append(data.items[i].snippet)
				result.append(h4)
				result.append(a)
				result.append(p)
			}
		}
	})
	
	return false
}