jQuery ->
  $('#enrolment_delivery_mode').parent().hide()
  states = $('#enrolment_delivery_mode').html()
  $('#enrolment_course_id').change ->
    country = $('#enrolment_course_id :selected').text()
    escaped_country = country.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(states).filter("optgroup[label='#{escaped_country}']").html()
    if options
      $('#enrolment_delivery_mode').html(options)
      $('#enrolment_delivery_mode').parent().show()
    else
      $('#enrolment_delivery_mode').empty()
      $('#enrolment_delivery_mode').parent().hide()