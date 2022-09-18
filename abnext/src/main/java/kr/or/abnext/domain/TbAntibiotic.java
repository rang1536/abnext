package kr.or.abnext.domain;

/*
 * 생성일 2022.07.23.
 * 테이블명 TbAntibiotic
 * 설명   항생제MASTER
 * */

public class TbAntibiotic {
	private String antiNo;
	private String inspNo;
	private String inspResult;

	private String antiName;
	private String capacity;
	private String nickName;
	private String mini;
	private String scope;
	private String maxi;
	private String res1;
	private String res2;
	private String antiMemo;

	private String insDt;
	private String insId;
	private String uptDt;
	private String uptId;
	public String getAntiNo() {
		return antiNo;
	}
	public void setAntiNo(String antiNo) {
		this.antiNo = antiNo;
	}
	public String getInspNo() {
		return inspNo;
	}
	public void setInspNo(String inspNo) {
		this.inspNo = inspNo;
	}
	public String getInspResult() {
		return inspResult;
	}
	public void setInspResult(String inspResult) {
		this.inspResult = inspResult;
	}
	public String getAntiName() {
		return antiName;
	}
	public void setAntiName(String antiName) {
		this.antiName = antiName;
	}
	public String getCapacity() {
		return capacity;
	}
	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getMini() {
		return mini;
	}
	public void setMini(String mini) {
		this.mini = mini;
	}
	public String getScope() {
		return scope;
	}
	public void setScope(String scope) {
		this.scope = scope;
	}
	public String getMaxi() {
		return maxi;
	}
	public void setMaxi(String maxi) {
		this.maxi = maxi;
	}
	public String getRes1() {
		return res1;
	}
	public void setRes1(String res1) {
		this.res1 = res1;
	}
	public String getRes2() {
		return res2;
	}
	public void setRes2(String res2) {
		this.res2 = res2;
	}
	public String getAntiMemo() {
		return antiMemo;
	}
	public void setAntiMemo(String antiMemo) {
		this.antiMemo = antiMemo;
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
		return "TbAntibiotic [antiNo=" + antiNo + ", inspNo=" + inspNo + ", inspResult=" + inspResult + ", antiName="
				+ antiName + ", capacity=" + capacity + ", nickName=" + nickName + ", mini=" + mini + ", scope=" + scope
				+ ", maxi=" + maxi + ", res1=" + res1 + ", res2=" + res2 + ", antiMemo=" + antiMemo + ", insDt=" + insDt
				+ ", insId=" + insId + ", uptDt=" + uptDt + ", uptId=" + uptId + "]";
	}

}