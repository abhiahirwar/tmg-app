jQuery(function($) {
	$(function () {
	  $('[data-toggle="popover"]').popover()
	});
	$('#rpl1').popover();
	$('#rpl').tooltip();
});
$(document).ready(function () {

    var $submit = $("#indrecc").hide(),
        $cbs = $('input[name="checkrecc"]').click(function () {
            $submit.toggle($cbs.is(":checked"));
            $('[name=indsubmit]').toggle(!$cbs.is(":checked"));
        });

});