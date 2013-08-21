var keys = [37, 38, 39, 40];

function preventDefault(e) {
  e = e || window.event;
  if (e.preventDefault)
      e.preventDefault();
  e.returnValue = false;  
}

function keydown(e) {
    for (var i = keys.length; i--;) {
        if (e.keyCode === keys[i]) {
            preventDefault(e);
            return;
        }
    }
}

function wheel(e) {
  preventDefault(e);
}

function disable_scroll() {
  if (window.addEventListener) {
      window.addEventListener('DOMMouseScroll', wheel, false);
  }
  window.onmousewheel = document.onmousewheel = wheel;
  document.onkeydown = keydown;
}

function enable_scroll() {
    if (window.removeEventListener) {
        window.removeEventListener('DOMMouseScroll', wheel, false);
    }
    window.onmousewheel = document.onmousewheel = document.onkeydown = null;  
}

$(document).ready(function(){
	function preventScroll(e)
	{
		return false;
	}
	$('.close-button, .white_fon').click(function(e){
		$('.close-button').parent().slideUp('slow');
		$('.white_fon').slideUp('slow');
		enable_scroll()
		e.preventDefault();
	});
	
	
	
	$('#callback_request').click(function(e){
		$('.white_fon').slideDown('slow');
		$('.user_callback').slideDown('slow');
		disable_scroll()
		e.preventDefault();
	});
	
	
})