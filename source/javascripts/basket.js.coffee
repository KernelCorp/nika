update = () ->
	weight = 0
	volume = 0
	cost = 0
	count = 0

	$('.basket_elem').each(() ->
		count = +$(this).find('.count').val()
		weight += +$(this).find('.elem_weight').html() * count
		volume += +($(this).find('.elem_volume').html()).split(' ').join('') * count
		cost += +($(this).find('.elem_cost').html()).split(' ').join('') * count
	)
	weight = weight.toString().replace(/(\d)(?=(\d\d\d)+([^\d]|$))/g, '$1 ')
	volume = volume.toString().replace(/(\d)(?=(\d\d\d)+([^\d]|$))/g, '$1 ')
	cost = cost.toString().replace(/(\d)(?=(\d\d\d)+([^\d]|$))/g, '$1 ')
	$('.total_weight').html(weight)
	$('.total_volume').html(volume)
	$('.total_cost').html(cost)

	return

$(document).ready () ->
	$('.icon-delete').on('click',(e) ->

		$(e.target).parents('table').remove()
		update()
		return
	)
	$('.icon-up-arrow').on('click',(e) ->

		td = $(e.target).parents('td')
		inp = td.find('input')
		inp.val(+inp.val() + 1)
		update()
		return
	)
	$('.icon-down-arrow').on('click',(e) ->

		td = $(e.target).parents('td')
		inp = td.find('input')
		if +inp.val() > 1
			inp.val(inp.val() - 1)
			update()
		return
	)

