# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $("#home .hero").cycle
    fx: "fade"
    speed: 500

  # Hide the bottom border on the last home page event
  $("#home").find(".event").last().addClass "last"
  return
