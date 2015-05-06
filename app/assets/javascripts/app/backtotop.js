$(document).ready(function() {
  $(window).scroll(function(){
    $(".btn-back").fadeIn(600);
  });
  $(".btn-back").click(function(){
    $("html, body").animate({ scrollTop: 0 }, "slow");
    return false;
  });
});