// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on('click', '.go-to-day', function(){
  var target = $(this).attr('data-goto');
  console.log($('#dt_'+target).show())
  $('.day').hide();
  $('#dt_'+target).removeClass('hide').show();
  $('.day-trigger').removeClass('active')
  $('#trigger_'+target).addClass('active')
})
