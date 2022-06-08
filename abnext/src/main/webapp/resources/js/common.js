

function gfn_getCode(uppCodeId,callBackFn){
	$.ajax({
		url : "selectCodeList",
		data : {uppCodeId : uppCodeId},
		type : "POST",
		dataType : "JSON",
		success : callBackFn
	});
}