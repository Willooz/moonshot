$(document).ready(function() {
  $(".bar").each(function(){
    var bar_width = $(this).data("completion-rate");
    $(this).animate({
      'width' : bar_width + '%'
    }, 650);
    $(this).parent().parent().find("h3").delay(650).fadeIn(650);
  });
});