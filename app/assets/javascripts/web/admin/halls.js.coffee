$('.hall-form').bind 'cocoon:after-insert', (e, inserted_item) ->
  $('.datetimepicker').datetimepicker
    format: "yyyy-MM-dd hh:mm:ss"
