package kr.or.abnext.domain;

/*
 * 생성일 2022.07.23.
 * 테이블명 TbAntibiotic
 * 설명   항생제MASTER
 * */

public class TbPcr {
	private String smplName;
	private String inspNo;
	private String positive;
	private String negative;
	private String result;
	private String memo;
	private String inspResult;

	private String insDt;
	private String insId;
	private String uptDt;
	private String uptId;
	public String getSmplName() {
		return smplName;
	}
	public void setSmplName(String smplName) {
		this.smplName = smplName;
	}
	public String getInspNo() {
		return inspNo;
	}
	public void setInspNo(String inspNo) {
		this.inspNo = inspNo;
	}
	public String getPositive() {
		return positive;
	}
	public void setPositive(String positive) {
		this.positive = positive;
	}
	public String getNegative() {
		return negative;
	}
	public void setNegative(String negative) {
		this.negative = negative;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public String getInspResult() {
		return inspResult;
	}
	public void setInspResult(String inspResult) {
		this.inspResult = inspResult;
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
		return "TbPcr [smplName=" + smplName + ", inspNo=" + inspNo + ", positive=" + positive + ", negative="
				+ negative + ", result=" + result + ", memo=" + memo + ", inspResult=" + inspResult + ", insDt=" + insDt
				+ ", insId=" + insId + ", uptDt=" + uptDt + ", uptId=" + uptId + "]";
	}

}