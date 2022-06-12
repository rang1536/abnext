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
            <div class="card">
              <div class="card-header" style="background-color:red;">
                <h3 class="card-title"></h3>

              </div>
              <!-- /.card-header 본문-->
              <div class="card-body">
				<!-- 병원입력폼  -->
                <form onsubmit="return false" id="farmInfoForm" encType="multipart/form-data"> 
	                <div class="farmitalDiv">
	                	<div class="row">   
			                <div class="col-sm-6">
				                <div class="form-group">
				                  <label>농장명 *</label>								
				                  <div class="input-group">
				                    <div class="input-group-prepend">
				                      <span class="input-group-text"><i class="fas fa-building"></i></span>
				                    </div>
				                    <input type="text" class="form-control farmInput" id="farmNm" name="farmNm">
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
				                    <input type="text" class="form-control farmInput" id="farmHp" name="farmHp" data-inputmask="'mask': ['999-999-9999 [x99999]', '+099 99 99 9999[9]-9999']" data-mask>
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
				                    <input type="text" class="form-control farmInput" id="farmTel" name=""farmTel"" data-inputmask='"mask": "(999) 999-9999"' data-mask>
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
				                    <input type="text" class="form-control farmInput" id="farmFax" name="farmFax" />
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
				                    <input type="text" class="form-control farmInput" id="farmEmail" name="farmEmail" />
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
				                    <input type="text" class="form-control farmInput" id="farmRn" name="farmRn" data-inputmask="'mask': ['999-999-9999 [x99999]', '+099 99 99 9999[9]-9999']" data-mask>
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
				                      <input type="file" class="custom-file-input" name="farmRnFile" id="farmRnFile"> 
				                      <label class="custom-file-label" for="farmRnFile">사업자등록증 파일을 등록해주세요</label>
				                    </div>
				                  </div>
				                </div>
				                <!-- /.form group -->
			                </div>
			            </div>
		                
		                <div class="row">   
			                <div class="col-md-4">
				                <div class="form-group">
				                  <label>입금은행명 </label>
								  
								  <div class="input-group">
					                  <select class="form-control select2" name="farmBankNm" id="farmBankNm" style="width:100%;">
				                    	<option selected="selected" value="0">::입금은행선택::</option>
				                    	<option value="KB국민">KB국민은행</option>
				                    	<option value="기업은행">기업은행</option>
				                    	<option value="농협은행">농협은행</option>
				                    	<option value="산업은행">산업은행</option>
				                    	<option value="수협은행">수협은행</option>
				                    	<option value="신한은행">신한은행</option>
				                    	<option value="우리은행">우리은행</option>
				                    	<option value="우체국">우체국</option>
				                    	<option value="하나은행">하나은행</option>
				                    	<option value="한국시티은행">한국시티은행</option>
				                    	<option value="SC제일">SC제일은행</option>
				                    	<option value="카카오뱅크">카카오뱅크</option>
				                    	<option value="케이뱅크">케이뱅크</option>
				                    	<option value="토스뱅크">토스뱅크</option>
				                    	<option value="경남은행">경남은행</option>
				                    	<option value="광주은행">광주은행</option>
				                    	<option value="대구은행">대구은행</option>
				                    	<option value="부산은행">부산은행</option>
				                    	<option value="전북은행">전북은행</option>
				                    	<option value="제주은행">제주은행</option>
				                    	<option value="저축은행">저축은행</option>
				                    	<option value="산림조합">산림조합</option>
				                    	<option value="새마을금고">새마을금고</option>
				                    	<option value="신협은행">신협은행</option>
				                      </select>
				                  </div> 
				                </div>
				                <!-- /.form group -->
			                </div>
			                
			                <div class="col-sm-8">
				                <div class="form-group">
				                  <label>입금계좌번호</label>
				
				                  <div class="input-group">
				                    <div class="input-group-prepend">
				                      <span class="input-group-text"><i class="fas fa-dollar-sign"></i></span>
				                    </div>
				                    <input type="text" class="form-control" id="farmAccountNo" name="farmAccountNo" >
				                  </div>
				                  <!-- /.input group -->
				                </div>
				                <!-- /.form group -->
			                </div>
		                </div>
								                
		                <label for="farmAdr">주소 *<code>&nbsp;주소검색을 이용해주세요.</code></label>
		                <!-- <div class="input-group mb-3"> -->
		                <div class="row">
		                	<div class="input-group col-sm-4">
			                  <input type="text" class="form-control farmInput" id="farmZip" name="farmZip" >
			                  <span class="input-group-append">
			                    <button type="button" class="btn btn-success btn-flat" onclick="fn_searchAdr('farm')">주소검색</button><!--  -->
			                  </span>
			                  <input type="hidden" id="farmSidoNm" name="farmSidoNm"/>
			                  <input type="hidden" id="farmSigunguNm" name="farmSigunguNm"/>
			                </div>
			            </div><br/>
			            <div class="row">   
		                	<div class="input-group col-sm-9">
			                  <span class="input-group-prepend">
			                    <button type="button" class="btn btn-default btn-flat" >기본주소</button>
			                  </span>
			                  <input type="text" class="form-control farmInput" id="farmAdr" name="farmAdr">
			                </div>
			            </div><br/>
			            <div class="row">
			            	<div class="input-group col-sm-9">
			            	  <div class="input-group-prepend">
			                    <button type="button" class="btn btn-default">상세주소</button>
			                  </div>
			                  <input type="text" class="form-control farmInput" name="farmDtlAdr" id="farmDtlAdr">
			            	</div>
		                </div> <!-- END input-group mb-3 -->		
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
         <button type="button" class="btn btn-default" data-dismiss="modal" id="modalCloseBtn">닫기</button>
         <button type="button" class="btn btn-primary" onclick="fn_addFarm();">등록</button>
       </div>
     </div>
     <!-- /.modal-content -->
   </div>
   <!-- /.modal-dialog -->
 </div>
 <!-- /.modal -->