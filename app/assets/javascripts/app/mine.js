$(document).ready(function() {
  $("#badges_mine_link").click(function() {
    $("#my_current_shots").hide();
    $("#my_pending_shots").hide();
    $("#my_badges").fadeIn(1000);
  });
  $("#pending_link").click(function() {
    $("#my_badges").hide();
    $("#my_current_shots").hide();
    $("#my_pending_shots").fadeIn(1000);
  });
  $("#current_mine_link").click(function() {
    $("#my_badges").hide();
    $("#my_pending_shots").hide();
    $("#my_current_shots").fadeIn(1000);
  });

});