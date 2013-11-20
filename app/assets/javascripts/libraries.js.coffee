# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready ->
  $(".submit-button").attr "disabled", "disabled"

  $("[id*=books_book_id]").click ->
    $( ".submit-button" ).removeAttr "disabled"

# .children("input[type='radio']")
   