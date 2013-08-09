# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ =>

  # Parse & Init stellar parallax scrolling
  $.stellar
    responsive: true

  # Start rotating gear
  $('.gear','.home.index').css('transform', 'rotate(0rad)')
  rotate = ->
    $('.gear','.home.index').animate
      transform: "+=rotate(0.10rad)"
    , 1000
    , 'linear'
    , -> rotate()
  rotate(0)

