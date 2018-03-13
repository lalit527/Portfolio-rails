ready = undefined
set_position = undefined

set_position = ->
  $('.card').each (i) ->
    $(this).attr 'data-pos', i+1
    return
  return

ready = ->
  set_position()
  $('.sortable').sortable()
  $('.sortable').sortable().bind 'sortupdate', (e, ui) ->
    update_order = []
    set_position()
    $('.card').each (i) ->
      update_order.push
        id: $(this).data('id')
        position: i + 1
      return
    $.ajax
      type: 'PUT'
      url: '/portfols/sort'
      data: order: update_order
    return
  return

$(document).ready ready
