package kr.or.abnext.domain;

/*
 * 생성일 2022.06.11.
 * 테이블명 TbInspection
 * 설명    진단검사MASTER
 * */

public class TbInspection {
	private String inspNo;
	private String rqstNo;
	private String sampleCode;
	private String sampleType;
	private String sampleMemo;
	private String inspFirstCd;
	private String inspSecondCd;
	private String inspThirdCd;
	private String inspPrice;
	private String insDt;
	private String insId;
	private String uptDt;
	private String uptId;
	public String getInspNo() {
		return inspNo;
	}
	public void setInspNo(String inspNo) {
		this.inspNo = inspNo;
	}
	public String getRqstNo() {
		return rqstNo;
	}
	public void setRqstNo(String rqstNo) {
		this.rqstNo = rqstNo;
	}
	public String getSampleCode() {
		return sampleCode;
	}
	public void setSampleCode(String sampleCode) {
		this.sampleCode = sampleCode;
	}
	public String getSampleType() {
		return sampleType;
	}
	public void setSampleType(String sampleType) {
		this.sampleType = sampleType;
	}
	public String getSampleMemo() {
		return sampleMemo;
	}
	public void setSampleMemo(String sampleMemo) {
		this.sampleMemo = sampleMemo;
	}
	public String getInspFirstCd() {
		return inspFirstCd;
	}
	public void setInspFirstCd(String inspFirstCd) {
		this.inspFirstCd = inspFirstCd;
	}
	public String getInspSecondCd() {
		return inspSecondCd;
	}
	public void setInspSecondCd(String inspSecondCd) {
		this.inspSecondCd = inspSecondCd;
	}
	public String getInspThirdCd() {
		return inspThirdCd;
	}
	public void setInspThirdCd(String inspThirdCd) {
		this.inspThirdCd = inspThirdCd;
	}
	public String getInspPrice() {
		return inspPrice;
	}
	public void setInspPrice(String inspPrice) {
		this.inspPrice = inspPrice;
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
	@Override
	public String toString() {
		return "TbInspection [inspNo=" + inspNo + ", rqstNo=" + rqstNo + ", sampleCode=" + sampleCode + ", sampleType="
				+ sampleType + ", sampleMemo=" + sampleMemo + ", inspFirstCd=" + inspFirstCd + ", inspSecondCd="
				+ inspSecondCd + ", inspThirdCd=" + inspThirdCd + ", inspPrice=" + inspPrice + ", insDt=" + insDt
				+ ", insId=" + insId + ", uptDt=" + uptDt + ", uptId=" + uptId + "]";
	}

}
