$(document).ready(function() {
  var selected_elements = [];

  $(".square-card").mouseenter(function(){
    $(this).addClass("highlighted");
  });

  $(".square-card").mouseleave(function(){
    $(this).removeClass("highlighted");
  });

  $(".list-card").mouseenter(function(){
    $(this).addClass("selected");
  });

  $(".list-card").mouseleave(function(){
    $(this).removeClass("selected");
  });

  $(".list-card").click(function(){

  });

  $(".square-card").click(function(e){
    var card = $(e.currentTarget);
    var cb = card.find('input[type=checkbox]');

    card.toggleClass("selected");
    cb.prop("checked", !cb.prop("checked"));

    /*var id = Number($(this).data("id"));
    if ($.inArray(id, selected_elements) < 0 ) {
      selected_elements.push(id);
    else
      var index = $.inArray(id, selected_elements);
      selected_elements.splice
    }
    selected_elements.push(Number(id))
    console.log(selected_elements);
    */
  });

});