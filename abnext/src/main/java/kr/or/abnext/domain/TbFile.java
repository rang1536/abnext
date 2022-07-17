package kr.or.abnext.domain;

/*
 * 생성일 2022.05.20.
 * 테이블명 TB_FILE
 * 설명    파일관리 master
 * */

public class TbFile {
	private int fileNo;
	private String fileGb;
	private String filePath;
	private String fileOriNm;
	private String fileNewNm;
	private String fileMemo;
	private int rqstNo;
	private int hospNo;
	private int userNo;
	private int animNo;
	private int farmNo;
	private int boardNo;
	private int inspNo;
	private String title;
	private String content;
	private String closeYn;

	public int getInspNo() {
		return inspNo;
	}
	public void setInspNo(int inspNo) {
		this.inspNo = inspNo;
	}
	public int getFileNo() {
		return fileNo;
	}
	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}
	public String getFileGb() {
		return fileGb;
	}
	public void setFileGb(String fileGb) {
		this.fileGb = fileGb;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public String getFileOriNm() {
		return fileOriNm;
	}
	public void setFileOriNm(String fileOriNm) {
		this.fileOriNm = fileOriNm;
	}
	public String getFileNewNm() {
		return fileNewNm;
	}
	public void setFileNewNm(String fileNewNm) {
		this.fileNewNm = fileNewNm;
	}
	public String getFileMemo() {
		return fileMemo;
	}
	public void setFileMemo(String fileMemo) {
		this.fileMemo = fileMemo;
	}
	public int getRqstNo() {
		return rqstNo;
	}
	public void setRqstNo(int rqstNo) {
		this.rqstNo = rqstNo;
	}
	public int getHospNo() {
		return hospNo;
	}
	public void setHospNo(int hospNo) {
		this.hospNo = hospNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getAnimNo() {
		return animNo;
	}
	public void setAnimNo(int animNo) {
		this.animNo = animNo;
	}
	public int getFarmNo() {
		return farmNo;
	}
	public void setFarmNo(int farmNo) {
		this.farmNo = farmNo;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCloseYn() {
		return closeYn;
	}
	public void setCloseYn(String closeYn) {
		this.closeYn = closeYn;
	}
	@Override
	public String toString() {
		return "TbFile [fileNo=" + fileNo + ", fileGb=" + fileGb + ", filePath=" + filePath + ", fileOriNm=" + fileOriNm
				+ ", fileNewNm=" + fileNewNm + ", fileMemo=" + fileMemo + ", rqstNo=" + rqstNo + ", hospNo=" + hospNo
				+ ", userNo=" + userNo + ", animNo=" + animNo + ", farmNo=" + farmNo + ", boardNo=" + boardNo
				+ ", inspNo=" + inspNo + ", title=" + title + ", content=" + content + ", closeYn=" + closeYn + "]";
	}

}
