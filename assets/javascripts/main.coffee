$ ->
  if $('body').width() < 768
    $(".nav-collapse").collapse
      toggle: false
  else
    $(".nav-collapse").collapse()
  setTimeout("scrollTo(0, 1)", 100)
