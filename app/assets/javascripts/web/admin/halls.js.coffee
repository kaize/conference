$('.hall-form').bind 'cocoon:after-insert', (e, inserted_item) ->
  $('.datetimepicker').datetimepicker
    format: "yyyy-MM-dd hh:mm:ss"
  inserted_item.find('.chosen-select').select2
    allowClear: true
    placeholder: $(@).data('placeholder')
