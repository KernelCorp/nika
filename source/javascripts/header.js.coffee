
make_corners =() ->
	if $('.middle .typeahead.dropdown-menu').is(':visible')
		$('#search').css('border-bottom-left-radius','0')
		$('#search').css('-moz-border-radius-bottomleft','0')
		$('#search').css('-webkit-border-bottom-left-radius','0')
		$('#search').css('border-bottom-right-radius','0')
		$('#search').css('-moz-border-radius-bottomright','0')
		$('#search').css('-webkit-border-bottom-right-radius','0')
		if !$('.middle .typeahead.dropdown-menu li a i').length
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
	$('.dropdown-toggle').dropdown()

	if $.browser.mozilla && $.browser.mozilla.version <= '4.0'
		$('label[for=attach_file]').on('click', (e) ->
			$('#attach_file').click()
			return
		)
	$('#attach_file').on('change', (e) ->
		$(this).css('display', 'inline-block')
		return
	)
	return