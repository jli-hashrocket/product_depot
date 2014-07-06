$(document).on "ready", ->
  $('.store .entry > img').click (e) ->
    e.preventDefault()
    $(this).parent().find(':submit').click()
