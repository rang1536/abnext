<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="modal fade" id="popRceptList">
   <div class="modal-dialog modal-xl">
     <div class="modal-content">
       <div class="modal-header">
         <h4 class="modal-title" style="font-weight:bold;">검사목록</h4>
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

                <div class="card-tools">
                  <div class="input-group input-group-sm" style="width: 300px;">
                  	<select name="searchStatCd" id="searchStatCd" class="form-control">
                  		<option value="전체">전체</option>
                  		<option value="신청">신청</option>
                  		<option value="검사중">검사중</option>
                  		<option value="완료">완료</option>
                  	</select>
                  </div>
                </div>
              </div>

              <input type="hidden" name="inspSecondNm" id="inspSecondNm"/>
              <input type="hidden" name="userNo" id="userNo"/>

              <!-- /.card-header -->
              <div class="card-body table-responsive p-0" style="height: 300px;">
                <table class="table table-hover text-nowrap" style="text-align:center;font-weight:bold;">
                  <thead>
                    <tr>
                      <th>의뢰번호</th>
                      <th>신청일</th>
                      <th>신청자</th>
                      <th>상태</th>
                      <th>동물이름</th>
                      <th>담당수의사</th>
                      <th>검사구분</th>
                    </tr>
                  </thead>
                  <tbody id="rceptListTbody">
                    <!-- 조회결과 -->
                  </tbody>
                </table>
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
         <!-- <button type="button" class="btn btn-primary">Save changes</button> -->
       </div>
     </div>
     <!-- /.modal-content -->
   </div>
   <!-- /.modal-dialog -->
 </div>
 <!-- /.modal -->