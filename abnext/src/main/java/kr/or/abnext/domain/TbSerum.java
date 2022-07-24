package kr.or.abnext.domain;

/*
 * 생성일 2022.07.23.
 * 테이블명 TbAntibiotic
 * 설명   항생제MASTER
 * */

public class TbSerum {
	private String serName;
	private String inspNo;
	private String serData;
	private String inspResult;

	private String insDt;
	private String insId;
	private String uptDt;
	private String uptId;

	//for chart
	private String cnt;

	public String getSerName() {
		return serName;
	}
	public void setSerName(String serName) {
		this.serName = serName;
	}
	public String getInspNo() {
		return inspNo;
	}
	public void setInspNo(String inspNo) {
		this.inspNo = inspNo;
	}
	public String getSerData() {
		return serData;
	}
	public void setSerData(String serData) {
		this.serData = serData;
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
	public String getCnt() {
		return cnt;
	}
	public void setCnt(String cnt) {
		this.cnt = cnt;
	}
	@Override
	public String toString() {
		return "TbSerum [serName=" + serName + ", inspNo=" + inspNo + ", serData=" + serData + ", inspResult="
				+ inspResult + ", insDt=" + insDt + ", insId=" + insId + ", uptDt=" + uptDt + ", uptId=" + uptId
				+ ", cnt=" + cnt + "]";
	}

}