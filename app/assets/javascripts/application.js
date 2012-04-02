// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require bootstrap


$(document).ready(function() {
  $("#button").bind("click", function() {
    /* Generating unique id
    */
    var rand = Math.random().toString().split(".")[1];
    var input = '<input type="file" class="'+rand+'" />'
    $(this).before('<br/>' + input );
  });

  /* Pushing the first input to the DOM
  */
  $("#button").trigger("click");

});