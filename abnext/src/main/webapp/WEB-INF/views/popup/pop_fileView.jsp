<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="modal fade" id="imgView"> <!-- 여기 아이디값 변경해서 복사 사용하면 됨 -->
	 <div class="modal-dialog">
		 <div class="modal-content">
			 <div class="modal-body">
				 <div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<div class="col-12">
									<!-- <img class="product-image"> -->
									<img class="image">
								</div>
							</div>
						</div>
					</div>
				</div>
			 </div>
			 <div class="modal-footer justify-content-between">
				 <button type="button" class="btn btn-default" data-dismiss="modal" id="modalCloseBtn">닫기</button>
			 </div>
		 </div>
		 <!-- /.modal-content -->
	 </div>
	 <!-- /.modal-dialog -->
 </div>
 <!-- /.modal -->