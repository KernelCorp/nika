$(document).ready () ->
  $('.list-link').click () ->
    if $(this).hasClass('open')
      $('.l-items').css('display', 'none')
      $('.l-count').css('display', 'none')
      $('.l-sum').css('display', 'none')
      $(this).removeClass('open')
    else
      $('.l-items').css('display', 'block')
      $('.l-count').css('display', 'block')
      $('.l-sum').css('display', 'block')
      $(this).addClass('open')
    return