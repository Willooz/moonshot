$(document).ready(function() {

  $(".datepicker").datepicker({format: "dd/mm/yyyy"});

  var selected_elements = [];

  $(".list-card").mouseenter(function(){
    $(this).addClass("selected");
  });

  $(".list-card").mouseleave(function(){
    $(this).removeClass("selected");
  });

  $(".list-card").click(function(e){
    var card = $(e.currentTarget);
    var a = card.find('a')[0];
    console.log(a);
    a.click();
  });

  $(".square-card").mouseenter(function(){
    $(this).addClass("highlighted");
  });

  $(".square-card").mouseleave(function(){
    $(this).removeClass("highlighted");
  });

  $(".square-card").click(function(e){
    var card = $(e.currentTarget);
    var cb = card.find('input[type=checkbox]');

    card.toggleClass("selected");
    cb.prop("checked", !cb.prop("checked"));
  });

});