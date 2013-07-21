$(document).ready ->
  $("li.drop-down").click (e) ->
    e.stopPropagation()
    if $(this).hasClass("up")
      $(this).removeClass "up"
      $(this).addClass "down"
    else
      $(this).removeClass "down"
      $(this).addClass "up"
    if $(this).children().length > 0
      kids = $(this).children()
      if $(kids[0]).hasClass("up")
        for kid in kids
          if $(kid)[0].tagName isnt "P" and $(kid)[0].tagName isnt "A"
            $(kid).fadeToggle()
        $(this).children()
      else
        for kid in kids
          if $(kid)[0].tagName isnt "P" and $(kid)[0].tagName isnt "A" and $(kid).attr("id") isnt "perm"
            $(kid).fadeToggle()
        $(this).children()