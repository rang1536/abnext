package kr.or.abnext.domain;

/*
 * 생성일 2022.06.11.
 * 테이블명 TbInspection
 * 설명    진단검사MASTER
 * */

public class TbSample {
	private String sampleNo;
	private String rqstNo;
	private String sampleCode;
	private String sampleName;
	private String sampleType;
	private String sampleMemo;
	private String sampleStatus;
	private String insDt;
	private String insId;
	private String uptDt;
	private String uptId;

	public String getSampleNo() {
		return sampleNo;
	}
	public void setSampleNo(String sampleNo) {
		this.sampleNo = sampleNo;
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
	public String getSampleName() {
		return sampleName;
	}
	public void setSampleName(String sampleName) {
		this.sampleName = sampleName;
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
	public String getSampleStatus() {
		return sampleStatus;
	}
	public void setSampleStatus(String sampleStatus) {
		this.sampleStatus = sampleStatus;
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
		return "TbSample [sampleNo=" + sampleNo + ", rqstNo=" + rqstNo + ", sampleCode=" + sampleCode + ", sampleName="
				+ sampleName + ", sampleType=" + sampleType + ", sampleMemo=" + sampleMemo + ", sampleStatus="
				+ sampleStatus + ", insDt=" + insDt + ", insId=" + insId + ", uptDt=" + uptDt + ", uptId=" + uptId
				+ "]";
	}


}

