$(document).ready () ->
	$('.list-link').click () ->
		parent = $(this).parents('tr')
		if $(this).hasClass('open')
			parent.find('.l-items').css('display', 'none')
			parent.find('.l-count').css('display', 'none')
			parent.find('.l-sum').css('display', 'none')
			$(this).removeClass('open')
		else
			parent.find('.l-items').css('display', 'block')
			parent.find('.l-count').css('display', 'block')
			parent.find('.l-sum').css('display', 'block')
			$(this).addClass('open')

		return