# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $(".submit-library-action").attr "disabled", "disabled"

  $("#select-student").change ->  
    if $("#select-student option:selected").val().length > 0
      $( ".submit-library-action" ).removeAttr "disabled"
    else
      $(".submit-library-action").attr "disabled", "disabled"

  


  
