$(document).ready(function() {
  $(".bar").each(function(){
    $(this).css('width', $(this).data("completion-rate") + '%');
  });
});