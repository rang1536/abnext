package kr.or.abnext.domain;

/*
 * 생성일 2022.05.20.
 * 테이블명 TB_RCEPT
 * 설명    접수관리MASTER
 * */

public class TbRcept {
	private int rqstNo;
	private int hospNo;
	private String hospNm;
	private int userNo;
	private String userNm;
	private int animNo;
	private String animNm;
	private int farmNo;
	private String farmNm;
	private int docNo;
	private String docNm;
	private String inspCd;
	private String inspSickCd;
	private String rqstDt;
	private String procStat;
	private String procStatNm;
	private String rqstMemo;
	private String payGb;
	private int price;
	private String payStat;
	private String insDt;
	private int insId;
	private String uptDt;
	private int uptId;
	
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
	public String getHospNm() {
		return hospNm;
	}
	public void setHospNm(String hospNm) {
		this.hospNm = hospNm;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getUserNm() {
		return userNm;
	}
	public void setUserNm(String userNm) {
		this.userNm = userNm;
	}
	public int getAnimNo() {
		return animNo;
	}
	public void setAnimNo(int animNo) {
		this.animNo = animNo;
	}
	public String getAnimNm() {
		return animNm;
	}
	public void setAnimNm(String animNm) {
		this.animNm = animNm;
	}
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
	public int getDocNo() {
		return docNo;
	}
	public void setDocNo(int docNo) {
		this.docNo = docNo;
	}
	public String getDocNm() {
		return docNm;
	}
	public void setDocNm(String docNm) {
		this.docNm = docNm;
	}
	public String getInspCd() {
		return inspCd;
	}
	public void setInspCd(String inspCd) {
		this.inspCd = inspCd;
	}
	public String getInspSickCd() {
		return inspSickCd;
	}
	public void setInspSickCd(String inspSickCd) {
		this.inspSickCd = inspSickCd;
	}
	public String getRqstDt() {
		return rqstDt;
	}
	public void setRqstDt(String rqstDt) {
		this.rqstDt = rqstDt;
	}
	public String getProcStat() {
		return procStat;
	}
	public void setProcStat(String procStat) {
		this.procStat = procStat;
	}
	public String getProcStatNm() {
		return procStatNm;
	}
	public void setProcStatNm(String procStatNm) {
		this.procStatNm = procStatNm;
	}
	public String getRqstMemo() {
		return rqstMemo;
	}
	public void setRqstMemo(String rqstMemo) {
		this.rqstMemo = rqstMemo;
	}
	public String getPayGb() {
		return payGb;
	}
	public void setPayGb(String payGb) {
		this.payGb = payGb;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getPayStat() {
		return payStat;
	}
	public void setPayStat(String payStat) {
		this.payStat = payStat;
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
		return "TbRcept [rqstNo=" + rqstNo + ", hospNo=" + hospNo + ", hospNm=" + hospNm + ", userNo=" + userNo
				+ ", userNm=" + userNm + ", animNo=" + animNo + ", animNm=" + animNm + ", farmNo=" + farmNo
				+ ", farmNm=" + farmNm + ", docNo=" + docNo + ", docNm=" + docNm + ", inspCd=" + inspCd
				+ ", inspSickCd=" + inspSickCd + ", rqstDt=" + rqstDt + ", procStat=" + procStat + ", procStatNm="
				+ procStatNm + ", rqstMemo=" + rqstMemo + ", payGb=" + payGb + ", price=" + price + ", payStat="
				+ payStat + ", insDt=" + insDt + ", insId=" + insId + ", uptDt=" + uptDt + ", uptId=" + uptId + "]";
	}
	
}
