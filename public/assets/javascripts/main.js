$(function() {
  if ($('body').width() < 768) {
    $(".nav-collapse").collapse({
      toggle: false
    });
  } else {
    $(".nav-collapse").collapse();
  }
  return setTimeout("scrollTo(0, 1)", 100);
});
