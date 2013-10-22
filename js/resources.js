function filter () {
	var _this = $(this)
	var filterText = _this.val().toLowerCase()
	var table = _this.next()
	var tr = $('tbody tr', table)
	
	tr.each(function () {
		var _tr = $(this)
		var td = $('td:first-child', _tr)
		var name = td.html().toLowerCase()
		if (name.indexOf(filterText) != -1) {
			_tr.show()
		} else {
			_tr.hide()
		}
	})
	$('body').scrollspy('refresh')
}
$('input').keyup(filter)