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

  $(".nav-tabs a").click(function(e) {
    var link = $(e.currentTarget);
    $(".nav-tabs li").removeClass("active");
    link.closest("li").addClass("active");
  });

  $("#overview_link").click(function() {
    $("#people").hide()
    $("#timeline").hide();
    $("#overview").fadeIn(1000);
  });
  $("#people_link").click(function() {
    $("#overview").hide();
    $("#timeline").hide();
    $("#people").fadeIn(1000);
  });
  $("#timeline_link").click(function() {
    $("#overview").hide();
    $("#people").hide();
    $("#timeline").fadeIn(1000);
  });

});