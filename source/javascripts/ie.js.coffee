$(document).ready () ->
	$('a.header-menu').click ()->
		$(window).trigger('resize')
