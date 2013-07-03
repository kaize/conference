$('.chosen-select').each ->
  $(@).select2
    allowClear: true
    placeholder: $(@).data('placeholder')
