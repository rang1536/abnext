<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="modal fade" id="popAddFarm"> <!-- 여기 아이디값 변경해서 복사 사용하면 됨 -->
   <div class="modal-dialog modal-xl">
     <div class="modal-content">
       <div class="modal-header">
         <h4 class="modal-title">농장 등록</h4>
         <button type="button" class="close" data-dismiss="modal" aria-label="Close">
           <span aria-hidden="true">&times;</span>
         </button>
       </div>
       <div class="modal-body">
         <div class="row">
          <div class="col-12">
            <div class="card card-primary card-outline">

              <!-- /.card-header 본문-->
              <div class="card-body" style="font-size:13px;">
				<!-- 병원입력폼  -->
                <form onsubmit="return false" id="addFarmInfoForm" encType="multipart/form-data">
	                <div class="addFarmitalDiv">
	                	<div class="row">
			                <div class="col-sm-6">
				                <div class="form-group">
				                  <label>농장명 *</label>
				                  <div class="input-group">
				                    <div class="input-group-prepend">
				                      <span class="input-group-text"><i class="fas fa-building"></i></span>
				                    </div>
				                    <input type="text" class="form-control addFarmInput" id="addFarmNm" name="addFarmNm">
				                  </div>
				                  <!-- /.input group -->
				                </div>
				                <!-- /.form group -->
			                </div>

			                <div class="col-sm-6">

			                </div>
		                </div>

		                <!-- phone mask -->
			            <div class="row">
			            	<div class="col-sm-6">
				                <div class="form-group">
				                  <label>휴대폰번호 *</label>

				                  <div class="input-group">
				                    <div class="input-group-prepend">
				                      <span class="input-group-text"><i class="fas fa-calculator"></i></span>
				                    </div>
				                    <input type="text" class="form-control addFarmInput" id="addFarmHp" name="addFarmHp" data-inputmask="'mask': ['999-999-9999 [x99999]', '+099 99 99 9999[9]-9999']" data-mask>
				                  </div>
				                  <!-- /.input group -->
				                </div>
				                <!-- /.form group -->
			                </div>
			                <div class="col-sm-6">
				                <div class="form-group">
				                  <label>전화번호</label>

				                  <div class="input-group">
				                    <div class="input-group-prepend">
				                      <span class="input-group-text"><i class="fas fa-phone"></i></span>
				                    </div>
				                    <input type="text" class="form-control addFarmInput" id="addFarmTel" name=""addFarmTel"" data-inputmask='"mask": "(999) 999-9999"' data-mask>
				                  </div>
				                  <!-- /.input group -->
				                </div>
				                <!-- /.form group -->
			                </div>


		                </div>

		                <div class="row">
			            	<div class="col-sm-6">
				                <div class="form-group">
				                  <label>팩스</label>
				                  <div class="input-group">
				                    <div class="input-group-prepend">
				                      <span class="input-group-text"><i class="fas fa-phone"></i></span>
				                    </div>
				                    <input type="text" class="form-control addFarmInput" id="addFarmFax" name="addFarmFax" />
				                  </div>
				                  <!-- /.input group -->
				                </div>
				                <!-- /.form group -->
			                </div>
			                <div class="col-sm-6">
				                <div class="form-group">
				                  <label>이메일(세금계산서용)</label>

				                  <div class="input-group">
				                    <div class="input-group-prepend">
				                      <span class="input-group-text"><i class="fas fa-envelope"></i></span>
				                    </div>
				                    <input type="text" class="form-control addFarmInput" id="addFarmEmail" name="addFarmEmail" />
				                  </div>
				                  <!-- /.input group -->
				                </div>
				                <!-- /.form group -->
			                </div>
		                </div>

		                <div class="row">
			            	<div class="col-sm-6">
				                <div class="form-group">
				                  <label>사업자등록번호</label>

				                  <div class="input-group">
				                    <div class="input-group-prepend">
				                      <span class="input-group-text"><i class="fas fa-file"></i></span>
				                    </div>
				                    <input type="text" class="form-control addFarmInput" id="addFarmRn" name="addFarmRn" data-inputmask="'mask': ['999-999-9999 [x99999]', '+099 99 99 9999[9]-9999']" data-mask>
				                  </div>
				                  <!-- /.input group -->
				                </div>
				                <!-- /.form group -->
			                </div>
			                <div class="col-sm-6">
				                <div class="form-group">
				                  <label>사업자등록증파일</label>

				                  <div class="input-group">
				                    <div class="custom-file">
				                      <input type="file" class="custom-file-input" name="addFarmRnFile" id="addFarmRnFile">
				                      <label class="custom-file-label" for="addFarmRnFile">사업자등록증 파일을 등록해주세요</label>
				                    </div>
				                  </div>
				                </div>
				                <!-- /.form group -->
			                </div>
			            </div>

		                <label for="addFarmAdr">주소 *<code>&nbsp;주소검색을 이용해주세요.</code></label>
		                <!-- <div class="input-group mb-3"> -->
		                <div class="row">
		                	<div class="input-group col-sm-4">
			                  <input type="text" class="form-control addFarmInput" id="addFarmZip" name="addFarmZip" >
			                  <span class="input-group-append">
			                    <button type="button" class="btn btn-success btn-flat" onclick="fn_searchAdr('addFarm')">주소검색</button><!--  -->
			                  </span>
			                  <input type="hidden" id="addFarmSidoNm" name="addFarmSidoNm"/>
			                  <input type="hidden" id="addFarmSigunguNm" name="addFarmSigunguNm"/>
			                  <input type="hidden" id="addFarmSigunguCd" name="addFarmSigunguCd"/>
			                </div>
			            </div><br/>
			            <div class="row">
		                	<div class="input-group col-sm-9">
			                  <span class="input-group-prepend">
			                    <button type="button" class="btn btn-default btn-flat" >기본주소</button>
			                  </span>
			                  <input type="text" class="form-control addFarmInput" id="addFarmAdr" name="addFarmAdr">
			                </div>
			            </div><br/>
			            <div class="row">
			            	<div class="input-group col-sm-9">
			            	  <div class="input-group-prepend">
			                    <button type="button" class="btn btn-default">상세주소</button>
			                  </div>
			                  <input type="text" class="form-control addFarmInput" name="addFarmDtlAdr" id="addFarmDtlAdr">
			            	</div>
		                </div> <!-- END input-group mb-3 -->

						<br/>
						<div class="row">
			            	<div class="col-sm-12">
				                <div class="form-group">
				                  <label>참고사항</label>

				                  <div class="input-group">
				                    <div class="input-group-prepend">
				                      <span class="input-group-text"><i class="fas fa-memo"></i></span>
				                    </div>
				                    <input type="text" class="form-control hospInput" id="addFarmMemo" name="addFarmMemo" >
				                  </div>
				                  <!-- /.input group -->
				                </div>
				                <!-- /.form group -->
			                </div>
			            </div>

		                <br/><br/>

						<div class="row">
			                <div class="col-sm-2">
				                <div class="form-group">
				                  <label>정산구분* </label>

								  <div class="input-group">
					                  <select class="form-control" name="addFarmPayGb" id="addFarmPayGb" style="width:100%;">
				                    	<option selected="selected" value="월간정산">월간정산</option>
				                    	<option value="건별정산">건별정산</option>
				                      </select>
				                  </div>
				                </div>
				                <!-- /.form group -->
			                </div>
			                <div class="col-sm-2">
				                <div class="form-group">
				                  <label>정산일 *</label>

				                  <div class="input-group">
				                    <div class="input-group">
										<select class="form-control" name="addFarmPayDate" id="addFarmPayDate" style="width:100%;">
											<option selected="selected" value="1">1</option>
											<option value="5">5</option>
											<option value="15">15</option>
											<option value="25">25</option>
											<option value="30">30</option>
										</select>
									</div>
				                  </div>
				                  <!-- /.input group -->
				                </div>
				                <!-- /.form group -->
			                </div>
			                <div class="col-sm-4">
				                <div class="form-group">
				                  <label>정산담당자*</label>

								  <div class="input-group">
				                    <div class="input-group-prepend">
				                      <span class="input-group-text"><i class="fas fa-address-card"></i></span>
				                    </div>
				                    <input type="text" class="form-control hospInput" id="addFarmPayManagerNm" name="addFarmPayManagerNm" >
				                  </div>
				                </div>
				                <!-- /.form group -->
			                </div>
			                <div class="col-sm-4">
				                <div class="form-group">
				                  <label>담당자연락처*</label>

				                  <div class="input-group">
				                    <div class="input-group-prepend">
				                      <span class="input-group-text"><i class="fas fa-phone"></i></span>
				                    </div>
				                    <input type="text" class="form-control hospInput" id="addFarmPayManagerHp" name="addFarmPayManagerHp" >
				                  </div>
				                  <!-- /.input group -->
				                </div>
				                <!-- /.form group -->
			                </div>

		                </div>
	                </div>
	            </form> <!-- 병원입력폼 END -->
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
        </div>
        <!-- /.row -->
       </div>
       <div class="modal-footer justify-content-between">
         <button type="button" class="btn btn-default" data-dismiss="modal" id="addFarmModalCloseBtn">닫기</button>
         <button type="button" class="btn btn-primary" onclick="fn_addFarm2();">등록</button>
       </div>
     </div>
     <!-- /.modal-content -->
   </div>
   <!-- /.modal-dialog -->
 </div>
 <!-- /.modal -->