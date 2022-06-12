
/*****************************************************
 *                   코 드 정 보                        *
 *****************************************************/
$.gfn_getCode = function(uppCodeId,callBackFn,obj){
	$.ajax({
		url : "selectCodeList",
		data : {uppCodeId : uppCodeId},
		type : "POST",
		dataType : "JSON",
		success : function(data){
			callBackFn(data,obj);
		}
	});
}


/*****************************************************
 *                코 드 상 세 정 보                      *
 *****************************************************/
$.gfn_getCodeDtl = function(codeId,callBackFn){
	$.ajax({
		url : "getCode",
		data : {codeId : codeId},
		type : "POST",
		dataType : "JSON",
		success : function(data){
			callBackFn(data);
		}
	});
}


/************************************************************
 *                   숫 자 콤 마 지 정                          *
 ************************************************************/
$.gfn_setComma = function(x){
	return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
}