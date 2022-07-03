package kr.or.abnext.domain;

/*
 * 생성일 2022.05.20.
 * 테이블명 TB_BOARD
 * 설명    게시판관리 master
 * */

public class TbBoard {
	private int boardNo;
	private String boardCd;
	private String boardPass;
	private String subject;
	private String content;
	private String fileCnt;
	private String commentCnt;
	private String tag;
	private String linkUrl;
	private String userNo;
	private String insDt;
	private String insId;
	private String uptDt;
	private String uptId;

	//추가
	private String userNm;
	private String userId;
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getBoardCd() {
		return boardCd;
	}
	public void setBoardCd(String boardCd) {
		this.boardCd = boardCd;
	}
	public String getBoardPass() {
		return boardPass;
	}
	public void setBoardPass(String boardPass) {
		this.boardPass = boardPass;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getFileCnt() {
		return fileCnt;
	}
	public void setFileCnt(String fileCnt) {
		this.fileCnt = fileCnt;
	}
	public String getCommentCnt() {
		return commentCnt;
	}
	public void setCommentCnt(String commentCnt) {
		this.commentCnt = commentCnt;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public String getLinkUrl() {
		return linkUrl;
	}
	public void setLinkUrl(String linkUrl) {
		this.linkUrl = linkUrl;
	}
	public String getUserNo() {
		return userNo;
	}
	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}
	public String getInsDt() {
		return insDt;
	}
	public void setInsDt(String insDt) {
		this.insDt = insDt;
	}
	public String getInsId() {
		return insId;
	}
	public void setInsId(String insId) {
		this.insId = insId;
	}
	public String getUptDt() {
		return uptDt;
	}
	public void setUptDt(String uptDt) {
		this.uptDt = uptDt;
	}
	public String getUptId() {
		return uptId;
	}
	public void setUptId(String uptId) {
		this.uptId = uptId;
	}
	public String getUserNm() {
		return userNm;
	}
	public void setUserNm(String userNm) {
		this.userNm = userNm;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	@Override
	public String toString() {
		return "TbBoard [boardNo=" + boardNo + ", boardCd=" + boardCd + ", boardPass=" + boardPass + ", subject="
				+ subject + ", content=" + content + ", fileCnt=" + fileCnt + ", commentCnt=" + commentCnt + ", tag="
				+ tag + ", linkUrl=" + linkUrl + ", userNo=" + userNo + ", insDt=" + insDt + ", insId=" + insId
				+ ", uptDt=" + uptDt + ", uptId=" + uptId + ", userNm=" + userNm + ", userId=" + userId + "]";
	}


}
