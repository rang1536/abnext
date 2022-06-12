<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="modal fade" id="popCompany">
   <div class="modal-dialog modal-xl">
     <div class="modal-content">
       <div class="modal-header">
         <h4 class="modal-title"><code id="popComNm"></code>검색</h4>
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
                    <input type="text" id="popSearchNm" name="popSearchNm" class="form-control float-right" placeholder="상호를 입력하세요">

                    <div class="input-group-append">
                      <button type="button" class="btn btn-default" onclick="popSearch();">
                        <i class="fas fa-search"></i>
                      </button>
                    </div>
                  </div>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body table-responsive p-0" style="height: 300px;">
                <table class="table table-head-fixed text-nowrap">
                  <thead>
                    <tr>
                      <th>구분</th>
                      <th>상호</th>
                      <th>대표자</th>
                      <th>전화번호</th>
                      <th>휴대폰</th>
                      <th>지역</th>
                    </tr>
                  </thead>
                  <tbody id="comTbody">
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