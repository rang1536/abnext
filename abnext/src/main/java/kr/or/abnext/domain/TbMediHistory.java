package kr.or.abnext.domain;

/*
 * 생성일 2022.06.11.
 * 테이블명 TbInspection
 * 설명    진단검사MASTER
 * */

public class TbMediHistory {
	private String histNo;
	private String rqstNo;
	private String histCode;
	private String histMemo;
	private String insDt;
	private String insId;
	private String uptDt;
	private String uptId;
	public String getHistNo() {
		return histNo;
	}
	public void setHistNo(String histNo) {
		this.histNo = histNo;
	}
	public String getRqstNo() {
		return rqstNo;
	}
	public void setRqstNo(String rqstNo) {
		this.rqstNo = rqstNo;
	}
	public String getHistCode() {
		return histCode;
	}
	public void setHistCode(String histCode) {
		this.histCode = histCode;
	}
	public String getHistMemo() {
		return histMemo;
	}
	public void setHistMemo(String histMemo) {
		this.histMemo = histMemo;
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
		return "TbMediHistory [histNo=" + histNo + ", rqstNo=" + rqstNo + ", histCode=" + histCode + ", histMemo="
				+ histMemo + ", insDt=" + insDt + ", insId=" + insId + ", uptDt=" + uptDt + ", uptId=" + uptId + "]";
	}

}

