jQuery(function($) {
	$(function () {
	  $('[data-toggle="popover"]').popover()
	});
	$('#rpl1').popover();
	$('#rpl').tooltip();
  $('#courses').DataTable({

  });
  $('#users').DataTable({

  });
});
$(document).ready(function () {

  var $submit = $("#indrecc").hide(),
      $cbs = $('input[name="checkrecc"]').click(function () {
          $submit.toggle($cbs.is(":checked"));
          $('[name=indsubmit]').toggle(!$cbs.is(":checked"));
        });

  var $disablityInput = $("#enrolment_student_attributes_disability")
  var $disablityInputGroup = $("#enrolment_student_attributes_disability").closest('.form-group').hide();
  if ($("#enrolment_student_attributes_disability_status_true").is(':checked')){
    $disablityInput.show();
    $disablityInputGroup.show();
  }
  $('#enrolment_student_attributes_disability_status_true').click(function() {
    $disablityInput.show();
    $disablityInputGroup.show();
  });

  $('#enrolment_student_attributes_disability_status_false').click(function() {
    $disablityInput.hide();
    $disablityInputGroup.hide();
  });

  var $previousQualificationInput = $('#enrolment_completed_qualification');
  var $enrolmentQualificationLocation = $('#enrolment_qualification_received_location');

  var $previousQualificationGroup = $('#enrolment_completed_qualification').closest('.qual-group').hide();
  if ($('#enrolment_completed_qualification_status_true').is(':checked')){
    $previousQualificationGroup.show();
  }

  $('#enrolment_completed_qualification_status_true').click(function() {
    $previousQualificationGroup.show();
  });
  $('#enrolment_completed_qualification_status_false').click(function() {
    $previousQualificationGroup.hide();
  });

  $('.datatable').DataTable({
    dom: "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span6'i><'span6'p>>",
    pagingType: "bootstrap"
    // ajax: ...,
    // autoWidth: false,
    // pagingType: 'full_numbers',
    // processing: true,
    // serverSide: true,

    // Optional, if you want full pagination controls.
    // Check dataTables documentation to learn more about available options.
    // http://datatables.net/reference/option/pagingType
  });


});