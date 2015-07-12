jQuery ->
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

  courses = $('#enrolment_course_id').html()
  $('#enrolment_course_category_id').change ->
    country = $('#enrolment_course_category_id :selected').text()
    escaped_country = country.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(courses).filter("optgroup[label='#{escaped_country}']").html()
    if options
      $('#enrolment_course_id').html(options)
      $('#enrolment_course_id').parent().show()
    else
      $('#enrolment_course_id').empty()
      $('#enrolment_course_id').parent().hide()