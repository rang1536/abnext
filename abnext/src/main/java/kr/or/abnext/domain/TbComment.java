package kr.or.abnext.domain;

/*
 * 생성일 2022.05.20.
 * 테이블명 TB_COMMENT
 * 설명    댓글관리 master
 * */

public class TbComment {
	private int commentNo;
	private int boardNo;
	private int uppCommNo;
	private String comment;
	private int userNo; //작성자
	private String insDt;
	public int getCommentNo() {
		return commentNo;
	}
	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public int getUppCommNo() {
		return uppCommNo;
	}
	public void setUppCommNo(int uppCommNo) {
		this.uppCommNo = uppCommNo;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getInsDt() {
		return insDt;
	}
	public void setInsDt(String insDt) {
		this.insDt = insDt;
	}
	@Override
	public String toString() {
		return "TbComment [commentNo=" + commentNo + ", boardNo=" + boardNo + ", uppCommNo=" + uppCommNo + ", comment="
				+ comment + ", userNo=" + userNo + ", insDt=" + insDt + "]";
	}
	
	
}
