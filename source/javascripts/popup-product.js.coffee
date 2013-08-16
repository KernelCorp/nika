selector = ".question"
selector_popup = selector.replace(/\./g, '#') + "-popup" # Change dot to hash for selector
text = "<p>Something <b>need</b> to be done.<br/>And it will be done if you <a href='javascript:function(){return false}'>sign up</a>.</p>"
popup = "<div id='#{selector_popup.substr(1)}'></div>" # Get rid of first hash character

$popup = $(text).wrap(popup).parent()
$selected = $(selector)

$selected.hover () ->
		$(this).append($popup)
		$(this).addClass("open")
		return
	() ->
		$(this).find(selector_popup).remove()
		$(this).removeClass("open")
		return
