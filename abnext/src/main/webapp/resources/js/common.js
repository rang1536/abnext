//var imgDomain = "http://avinext.cafe24.com/files/";
var imgDomain = "http://avinextlab.com/files/";


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
 *                   코 드 정 보 (역순)                  *
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


/************************************************************
 *                   휴 대 폰 번 호 정 규 식                     *
 ************************************************************/
function gfn_validation_hp(text){
	var regPhone = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
    if(regPhone.test(text)) {
        return true;
    }else{
    	return false;
    }
}


/************************************************************
 *                   이 메 일 정 규 식                          *
 ************************************************************/
function gfn_validation_email(text){
	var regEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
    if(regEmail.test(text)) {
    	return true;
    }else{
    	return false;
    }
}


/************************************************************
 *                   화면PDF 출력 	                        *
 ************************************************************/
var initBobyHtml;
var printTagId;

function fn_print(tagId){
	printTagId = tagId;

	$('#printDiv').css('display', '');

	$.each(chartIdArr, function(i, chartTagIdx){
		var canvas = document.getElementById("barChartPdf"+chartTagIdx);

		$('#chartImgTag'+chartTagIdx).prop('src', canvas.toDataURL());
	})

	$('.chart').css('display', 'none');

	setTimeout(function(){
		window.print();
	}, 1000);



}

function beforePrint(){
	initBobyHtml = document.body.innerHTML;
	document.body.innerHTML = document.getElementById(printTagId).innerHTML;
}

function afterPrint(){
	document.body.innerHTML = initBobyHtml;
	//location.reload(true);
}

/*
if(window.matchMedia){
	var mQuery = window.matchMedia('print');
	mQuery.addListener(function(mql){
		if(mql.matches){
			beforePrint();
		}else{
			afterPrint();
		}
	})
}
*/
window.onbeforeprint = beforePrint;
window.onafterprint = afterPrint;

function makePdf(pageNum, bodyObj, footYn){
	if(footYn == null || footYn == ''){
		footYn = 'Y';
	}

	var html = '';
	html +='<section class="content pdfSection'+pageNum+' paperView" style="font-size:12px;">';
	html +='	<div class="container-fluid">';
	html +='		<div class="row">';
	html +='			<div class="col-12">';
	html +='				<div class="card paperContentView">';
	html +='					<div class="row mb-2" style="border-bottom:2px solid #000000;padding:10px;width:98%;margin-left:10px;">';
	html +='						<div class="col-sm-6">';
	html +='							<h1><b><img src="resources/files/avilogo.png" alt="Avinext Logo" style="width:50%;"></b></h1>';
	html +='						</div>';
	html +='						<div class="col-sm-6">';
	html +='							<ol class="breadcrumb float-sm-right">';
	html +='								<li class="breadcrumb-item">TEL 043-292-9998</li>';
	html +='								<li class="breadcrumb-item active" onclick="fn_print(\'printDiv\');">출력하기</li>';
	html +='							</ol>';
	html +='						</div>';
	html +='					</div>';
	html +='					<div class="row pdfDiv" style="min-height:1110px;max-height:1150px;">';
	html += bodyObj;
	html +='					</div>			';

	if(footYn != 'N'){
		html +='					<div style="font-size:12px;font-weight:bold;color:#000000;width:100%;border-top:1px solid #ddd;text-align:center;margin:5px;padding-top:5px;">';
		html +='						<strong>Copyright &copy; 2017-2022 <a href="https://adminlte.io">(주)아비넥스트</a>.</strong> All rights reserved.';
		html +='						<br/>';
		html +='						<string style="color:#FF0000">* 본 문서는 검사확인 및 치료 이외의 다른 목적으로 활용 할 수 없습니다.</string>';
		html +='					</div>';
	}

	html +='				</div>';
	html +='			</div>';
	html +='		</div>';
	html +='	</div>	';
	html +='</section>';

	return html;
}

function makePdfView(pageNum, bodyObj){
	var html = '';
	html +='<section class="content pdfSection'+pageNum+'" style="font-size:12px;">';
	html +='	<div class="container-fluid">';
	html +='		<div class="row">';
	html +='			<div class="col-12">';
	html +='				<div class="card">';
	html +='					<div class="row mb-2" style="border-bottom:2px solid #000000;padding:10px;width:98%;margin-left:10px;">';
	html +='						<div class="col-sm-6">';
	html +='							<h1><b><img src="resources/files/avilogo.png" alt="Avinext Logo" style="width:50%;"></b></h1>';
	html +='						</div>';
	html +='						<div class="col-sm-6">';
	html +='							<ol class="breadcrumb float-sm-right">';
	html +='								<li class="breadcrumb-item">TEL 043-292-9998</li>';
	html +='								<li class="breadcrumb-item active" onclick="fn_print(\'printDiv\');">출력하기</li>';
	html +='							</ol>';
	html +='						</div>';
	html +='					</div>';
	html +='					<div class="row pdfDiv" style="min-height:1150px;max-height:1150px;">';
	html += bodyObj;
	html +='					</div>			';

	html +='					<div style="font-size:12px;font-weight:bold;color:#000000;width:100%;border-top:1px solid #ddd;text-align:center;margin:5px;padding-top:5px;">';
	html +='						<strong>Copyright &copy; 2017-2022 <a href="https://adminlte.io">(주)아비넥스트</a>.</strong> All rights reserved.';
	html +='						<br/>';
	html +='						<string style="color:#FF0000">* 본 문서는 검사확인 및 치료 이외의 다른 목적으로 활용 할 수 없습니다.</string>';
	html +='					</div>';

	html +='				</div>';
	html +='			</div>';
	html +='		</div>';
	html +='	</div>	';
	html +='</section>';

	return html;
}

/************************************************************/
/* 엑셀다운 jqGrid
 *  jQuery table2excel - v1.1.2
 *  jQuery plugin to export an .xls file in browser from an HTML table
 *  https://github.com/rainabba/jquery-table2excel
 *
 *  Made by rainabba
 *  Under MIT License
 */
//table2excel.js
(function ( $, window, document, undefined ) {
    var pluginName = "table2excel",

    defaults = {
        exclude: ".noExl",
        name: "Table2Excel",
        filename: "table2excel",
        fileext: ".xls",
        exclude_img: true,
        exclude_links: true,
        exclude_inputs: true,
        preserveColors: false
    };

    // The actual plugin constructor
    function Plugin ( element, options ) {
            this.element = element;
            // jQuery has an extend method which merges the contents of two or
            // more objects, storing the result in the first object. The first object
            // is generally empty as we don't want to alter the default options for
            // future instances of the plugin
            //
            this.settings = $.extend( {}, defaults, options );
            this._defaults = defaults;
            this._name = pluginName;
            this.init();
    }

    Plugin.prototype = {
        init: function () {
            var e = this;

            var utf8Heading = "<meta http-equiv=\"content-type\" content=\"application/vnd.ms-excel; charset=UTF-8\">";
            e.template = {
                head: "<html xmlns:o=\"urn:schemas-microsoft-com:office:office\" xmlns:x=\"urn:schemas-microsoft-com:office:excel\" xmlns=\"http://www.w3.org/TR/REC-html40\">" + utf8Heading + "<head><!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets>",
                sheet: {
                    head: "<x:ExcelWorksheet><x:Name>",
                    tail: "</x:Name><x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet>"
                },
                mid: "</x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]--></head><body>",
                table: {
                    head: "<table>",
                    tail: "</table>"
                },
                foot: "</body></html>"
            };

            e.tableRows = [];

			// Styling variables
			var additionalStyles = "";
			var compStyle = null;

            // get contents of table except for exclude
            $(e.element).each( function(i,o) {
                var tempRows = "";
                $(o).find("tr").not(e.settings.exclude).each(function (i,p) {

					// Reset for this row
					additionalStyles = "";

					// Preserve background and text colors on the row
					if(e.settings.preserveColors){
						compStyle = getComputedStyle(p);
						additionalStyles += (compStyle && compStyle.backgroundColor ? "background-color: " + compStyle.backgroundColor + ";" : "");
						additionalStyles += (compStyle && compStyle.color ? "color: " + compStyle.color + ";" : "");
					}

					// Create HTML for Row
                    tempRows += "<tr style='" + additionalStyles + "'>";

                    // Loop through each TH and TD
                    $(p).find("td,th").not(e.settings.exclude).each(function (i,q) { // p did not exist, I corrected

						// Reset for this column
						additionalStyles = "";

						// Preserve background and text colors on the row
						if(e.settings.preserveColors){
							compStyle = getComputedStyle(q);
							additionalStyles += (compStyle && compStyle.backgroundColor ? "background-color: " + compStyle.backgroundColor + ";" : "");
							additionalStyles += (compStyle && compStyle.color ? "color: " + compStyle.color + ";" : "");
						}

                        var rc = {
                            rows: $(this).attr("rowspan"),
                            cols: $(this).attr("colspan"),
                            flag: $(q).find(e.settings.exclude)
                        };

                        if( rc.flag.length > 0 ) {
                            tempRows += "<td> </td>"; // exclude it!!
                        } else {
                            tempRows += "<td";
                            if( rc.rows > 0) {
                                tempRows += " rowspan='" + rc.rows + "' ";
                            }
                            if( rc.cols > 0) {
                                tempRows += " colspan='" + rc.cols + "' ";
                            }
                            if(additionalStyles){
								tempRows += " style='" + additionalStyles + "'";
							}
                            tempRows += ">" + $(q).html() + "</td>";
                        }
                    });

                    tempRows += "</tr>";

                });
                // exclude img tags
                if(e.settings.exclude_img) {
                    tempRows = exclude_img(tempRows);
                }

                // exclude link tags
                if(e.settings.exclude_links) {
                    tempRows = exclude_links(tempRows);
                }

                // exclude input tags
                if(e.settings.exclude_inputs) {
                    tempRows = exclude_inputs(tempRows);
                }
                e.tableRows.push(tempRows);
            });

            e.tableToExcel(e.tableRows, e.settings.name, e.settings.sheetName);
        },

        tableToExcel: function (table, name, sheetName) {
            var e = this, fullTemplate="", i, link, a;

            e.format = function (s, c) {
                return s.replace(/{(\w+)}/g, function (m, p) {
                    return c[p];
                });
            };

            sheetName = typeof sheetName === "undefined" ? "Sheet" : sheetName;

            e.ctx = {
                worksheet: name || "Worksheet",
                table: table,
                sheetName: sheetName
            };

            fullTemplate= e.template.head;

            if ( $.isArray(table) ) {
                 Object.keys(table).forEach(function(i){
                      //fullTemplate += e.template.sheet.head + "{worksheet" + i + "}" + e.template.sheet.tail;
                      fullTemplate += e.template.sheet.head + sheetName + i + e.template.sheet.tail;
                });
            }

            fullTemplate += e.template.mid;

            if ( $.isArray(table) ) {
                 Object.keys(table).forEach(function(i){
                    fullTemplate += e.template.table.head + "{table" + i + "}" + e.template.table.tail;
                });
            }

            fullTemplate += e.template.foot;

            for (i in table) {
                e.ctx["table" + i] = table[i];
            }
            delete e.ctx.table;

            var isIE = navigator.appVersion.indexOf("MSIE 10") !== -1 || (navigator.userAgent.indexOf("Trident") !== -1 && navigator.userAgent.indexOf("rv:11") !== -1); // this works with IE10 and IE11 both :)
            //if (typeof msie !== "undefined" && msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./))      // this works ONLY with IE 11!!!
            if (isIE) {
                if (typeof Blob !== "undefined") {
                    //use blobs if we can
                    fullTemplate = e.format(fullTemplate, e.ctx); // with this, works with IE
                    fullTemplate = [fullTemplate];
                    //convert to array
                    var blob1 = new Blob(fullTemplate, { type: "text/html" });
                    window.navigator.msSaveBlob(blob1, getFileName(e.settings) );
                } else {
                    //otherwise use the iframe and save
                    //requires a blank iframe on page called txtArea1
                    txtArea1.document.open("text/html", "replace");
                    txtArea1.document.write(e.format(fullTemplate, e.ctx));
                    txtArea1.document.close();
                    txtArea1.focus();
                    sa = txtArea1.document.execCommand("SaveAs", true, getFileName(e.settings) );
                }

            } else {
                var blob = new Blob([e.format(fullTemplate, e.ctx)], {type: "application/vnd.ms-excel"});
                window.URL = window.URL || window.webkitURL;
                link = window.URL.createObjectURL(blob);
                a = document.createElement("a");
                a.download = getFileName(e.settings);
                a.href = link;

                document.body.appendChild(a);

                a.click();

                document.body.removeChild(a);
            }

            return true;
        }
    };

    function getFileName(settings) {
        return ( settings.filename ? settings.filename : "table2excel" );
    }

    // Removes all img tags
    function exclude_img(string) {
        var _patt = /(\s+alt\s*=\s*"([^"]*)"|\s+alt\s*=\s*'([^']*)')/i;
        return string.replace(/<img[^>]*>/gi, function myFunction(x){
            var res = _patt.exec(x);
            if (res !== null && res.length >=2) {
                return res[2];
            } else {
                return "";
            }
        });
    }

    // Removes all link tags
    function exclude_links(string) {
        return string.replace(/<a[^>]*>|<\/a>/gi, "");
    }

    // Removes input params
    function exclude_inputs(string) {
        var _patt = /(\s+value\s*=\s*"([^"]*)"|\s+value\s*=\s*'([^']*)')/i;
        return string.replace(/<input[^>]*>|<\/input>/gi, function myFunction(x){
            var res = _patt.exec(x);
            if (res !== null && res.length >=2) {
                return res[2];
            } else {
                return "";
            }
        });
    }

    $.fn[ pluginName ] = function ( options ) {
        var e = this;
            e.each(function() {
                if ( !$.data( e, "plugin_" + pluginName ) ) {
                    $.data( e, "plugin_" + pluginName, new Plugin( this, options ) );
                }
            });

        // chain jQuery functions
        return e;
    };

})( jQuery, window, document );
