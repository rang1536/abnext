
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

/*****************************************************
 *                코 드 상 세 정 보                      *
 *****************************************************/
$.gfn_getCodeNm = function(codeId){
	var codeNm;
	$.ajax({
		url : "getCode",
		data : {codeId : codeId},
		type : "POST",
		async: false,
		dataType : "JSON",
		success : function(data){
			codeNm = data.codeNm;
		}
	});
	return codeNm;
}

/************************************************************
 *                   숫 자 콤 마 지 정                          *
 ************************************************************/
$.gfn_setComma = function(x){
	return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
}

/************************************************************
 *                    오 늘 일 자                              *
 ************************************************************/
$.gfn_getToday = function(gubun, type){

	var curDate = new Date();
	var y; var m; var d;

	y = curDate.getFullYear();

	if(curDate.getMonth()+1 < 10){
		m = "0"+ (curDate.getMonth()+1);
	}else {
		m = curDate.getMonth()+1;
	}

	if(curDate.getDate < 10){
		d = "0"+curDate.getDate();
	}else {
		d = curDate.getDate();
	}
	var ymd;
	if(gubun != null) {
		if(type != null){
			if(type == "YYYYMM"){
				ymd = y+gubun+m;
			}else if (type == "YYYY"){
				ymd = y;
			}else {
				ymd = y+gubun+m+gubun+d;
			}
		}else {
			ymd = y+gubun+m+gubun+d;
		}
	}else {
		if(type != null){
			if(type == "YYYYMM"){
				ymd = y+"."+m;
			}else if (type == "YYYY"){
				ymd = y;
			}else {
				ymd = y+"."+m+"."+d;
			}
		}else {
			ymd = y+"."+m+"."+d;
		}
	}
	return ymd;
}


/************************************************************
 *                   숫 자 콤 마 지 정                          *
 ************************************************************/
$.gfn_nvl = function(x){
	if(x == null || x == 'null'){
		return '';
	}else {
		return x;
	}
}



