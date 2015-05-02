$(document).ready(function() {
  $("#badges_link").click(function() {
    $("#current_shots").hide();
    $("#all_shots").hide();
    $("#badges").fadeIn(1000);
  });
  $("#current_link").click(function() {
    $("#badges").hide();
    $("#all_shots").hide();
    $("#current_shots").fadeIn(1000);
  });
  $("#all_link").click(function() {
    $("#badges").hide();
    $("#current_shots").hide();
    $("#all_shots").fadeIn(1000);
  });

});