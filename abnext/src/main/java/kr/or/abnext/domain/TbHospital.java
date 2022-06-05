package kr.or.abnext.domain;

/*
 * 생성일 2022.05.20.
 * 테이블명 TB_HOSPITAL
 * 설명    병원관리 master
 * */

public class TbHospital {
	private int hospNo;
	private String hospNm;
	private String hospTel;
	private String hospHp;
	private String hospEmail;
	private String hospFax;
	private String hospAdr;
	private String hospDtlAdr;
	private String hospZip;
	private String hospCeo;
	private String hospRn;
	private String insDt;
	private int insId;
	private String uptDt;
	private int uptId;
	
	//추가
	private String hospSidoNm;
	private String hospSigunguNm;
	
	
	public String getHospSidoNm() {
		return hospSidoNm;
	}
	public void setHospSidoNm(String hospSidoNm) {
		this.hospSidoNm = hospSidoNm;
	}
	public String getHospSigunguNm() {
		return hospSigunguNm;
	}
	public void setHospSigunguNm(String hospSigunguNm) {
		this.hospSigunguNm = hospSigunguNm;
	}
	public String getHospZip() {
		return hospZip;
	}
	public void setHospZip(String hospZip) {
		this.hospZip = hospZip;
	}
	public int getHospNo() {
		return hospNo;
	}
	public void setHospNo(int hospNo) {
		this.hospNo = hospNo;
	}
	public String getHospNm() {
		return hospNm;
	}
	public void setHospNm(String hospNm) {
		this.hospNm = hospNm;
	}
	public String getHospTel() {
		return hospTel;
	}
	public void setHospTel(String hospTel) {
		this.hospTel = hospTel;
	}
	public String getHospHp() {
		return hospHp;
	}
	public void setHospHp(String hospHp) {
		this.hospHp = hospHp;
	}
	public String getHospEmail() {
		return hospEmail;
	}
	public void setHospEmail(String hospEmail) {
		this.hospEmail = hospEmail;
	}
	public String getHospFax() {
		return hospFax;
	}
	public void setHospFax(String hospFax) {
		this.hospFax = hospFax;
	}
	public String getHospAdr() {
		return hospAdr;
	}
	public void setHospAdr(String hospAdr) {
		this.hospAdr = hospAdr;
	}
	public String getHospDtlAdr() {
		return hospDtlAdr;
	}
	public void setHospDtlAdr(String hospDtlAdr) {
		this.hospDtlAdr = hospDtlAdr;
	}
	public String getHospCeo() {
		return hospCeo;
	}
	public void setHospCeo(String hospCeo) {
		this.hospCeo = hospCeo;
	}
	public String getHospRn() {
		return hospRn;
	}
	public void setHospRn(String hospRn) {
		this.hospRn = hospRn;
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
		return "TbHospital [hospNo=" + hospNo + ", hospNm=" + hospNm + ", hospTel=" + hospTel + ", hospHp=" + hospHp
				+ ", hospEmail=" + hospEmail + ", hospFax=" + hospFax + ", hospAdr=" + hospAdr + ", hospDtlAdr="
				+ hospDtlAdr + ", hospZip=" + hospZip + ", hospCeo=" + hospCeo + ", hospRn=" + hospRn + ", insDt="
				+ insDt + ", insId=" + insId + ", uptDt=" + uptDt + ", uptId=" + uptId + ", hospSidoNm=" + hospSidoNm
				+ ", hospSigunguNm=" + hospSigunguNm + "]";
	}
	
}
