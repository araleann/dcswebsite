function init () {
	var tabs = $('a[data-toggle="tab"]')
	tabs.click(function () {
		tabs.parents('li').removeClass('active')
		$('a[data-toggle="dropdown"]').parents('li').removeClass('active') 
	})
}
$('document').ready(init)