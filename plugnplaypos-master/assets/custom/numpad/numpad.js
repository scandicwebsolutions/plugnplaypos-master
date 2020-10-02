$(document).ready(function(){
    $(document).keydown(function(e){
		var key = e.keyCode;
		if (key >= 48 && key <= 57) {
			addNumber({value: key - 48});
		} else if (key >= 96 && key <= 105) {
			addNumber({value: key - 96});
		} else if (key == 46) {
			clearNumber();
		} else if (key == 13) {
			// e.preventDefault();
			$(this).blur();
			$("#submit").focus().click();
		} else if (key == 8) {
			delNumber();
		}
    });
});

function addNumber(e){
	var v = $( "#pin-code" ).val();
	if (v.length < 4) {
		$("#pin-code").val(v + e.value);
	}
}

function delNumber(){
	var v = $( "#pin-code" ).val();
	if (v.length > 0) {
		$( "#pin-code" ).val(v.substring(0, v.length - 1));
	}
}

function clearNumber(e){
	$( "#pin-code" ).val("");
}