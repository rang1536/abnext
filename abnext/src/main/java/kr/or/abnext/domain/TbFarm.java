package kr.or.abnext.domain;

/*
 * 생성일 2022.05.20.
 * 테이블명 TB_FARM
 * 설명    농장관리 master
 * */

public class TbFarm {
	private int farmNo;
	private String farmNm;
	private String farmCeo;
	private String farmTel;
	private String farmHp;
	private String farmFax;
	private String farmAdr;
	private String farmDtlAdr;
	private String farmEmail;
	private String farmRn;
	private String insDt;
	private int insId;
	private String uptDt;
	private int uptId;
	public int getFarmNo() {
		return farmNo;
	}
	public void setFarmNo(int farmNo) {
		this.farmNo = farmNo;
	}
	public String getFarmNm() {
		return farmNm;
	}
	public void setFarmNm(String farmNm) {
		this.farmNm = farmNm;
	}
	public String getFarmCeo() {
		return farmCeo;
	}
	public void setFarmCeo(String farmCeo) {
		this.farmCeo = farmCeo;
	}
	public String getFarmTel() {
		return farmTel;
	}
	public void setFarmTel(String farmTel) {
		this.farmTel = farmTel;
	}
	public String getFarmHp() {
		return farmHp;
	}
	public void setFarmHp(String farmHp) {
		this.farmHp = farmHp;
	}
	public String getFarmFax() {
		return farmFax;
	}
	public void setFarmFax(String farmFax) {
		this.farmFax = farmFax;
	}
	
	public String getFarmAdr() {
		return farmAdr;
	}
	public void setFarmAdr(String farmAdr) {
		this.farmAdr = farmAdr;
	}
	public String getFarmDtlAdr() {
		return farmDtlAdr;
	}
	public void setFarmDtlAdr(String farmDtlAdr) {
		this.farmDtlAdr = farmDtlAdr;
	}
	public String getFarmEmail() {
		return farmEmail;
	}
	public void setFarmEmail(String farmEmail) {
		this.farmEmail = farmEmail;
	}
	public String getFarmRn() {
		return farmRn;
	}
	public void setFarmRn(String farmRn) {
		this.farmRn = farmRn;
	}
	public String getInsDt() {
		return insDt;
	}
	public void setInsDt(String insDt) {
		this.insDt = insDt;
	}
	public int getInsId() {
		return insId;
	}
	public void setInsId(int insId) {
		this.insId = insId;
	}
	public String getUptDt() {
		return uptDt;
	}
	public void setUptDt(String uptDt) {
		this.uptDt = uptDt;
	}
	public int getUptId() {
		return uptId;
	}
	public void setUptId(int uptId) {
		this.uptId = uptId;
	}
	@Override
	public String toString() {
		return "TbFarm [farmNo=" + farmNo + ", farmNm=" + farmNm + ", farmCeo=" + farmCeo + ", farmTel=" + farmTel
				+ ", farmHp=" + farmHp + ", farmFax=" + farmFax + ", farmAdr=" + farmAdr + ", farmDtlAdr=" + farmDtlAdr
				+ ", farmEmail=" + farmEmail + ", farmRn=" + farmRn + ", insDt=" + insDt + ", insId=" + insId
				+ ", uptDt=" + uptDt + ", uptId=" + uptId + "]";
	}
	
	
}