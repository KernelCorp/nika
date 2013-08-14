
make_corners =() ->
	if $('.middle .typeahead.dropdown-menu').is(':visible')
		$('#search').css('border-bottom-left-radius','0')
		$('#search').css('-moz-border-radius-bottomleft','0')
		$('#search').css('-webkit-border-bottom-left-radius','0')
		$('#search').css('border-bottom-right-radius','0')
		$('#search').css('-moz-border-radius-bottomright','0')
		$('#search').css('-webkit-border-bottom-right-radius','0')
		$('.middle .typeahead.dropdown-menu li a').append('<i class="right-arrow">')
	else
		$('#search').css('border-bottom-left-radius','4px')
		$('#search').css('-moz-border-radius-bottomleft','4px')
		$('#search').css('-webkit-border-bottom-left-radius','4px')
		$('#search').css('border-bottom-right-radius','4px')
		$('#search').css('-moz-border-radius-bottomright','4px')
		$('#search').css('-webkit-border-bottom-right-radius','4px')
	return

$(document).ready () ->
	options = {
		source: ['Мебель', 'Мебельные комплекты', 'Мебелировка спальни']
	}
	$('#search').typeahead options
	$('#search').keydown  () ->
		setTimeout(make_corners, 200)
	$(document).click  () ->
		setTimeout(make_corners, 200)
	return