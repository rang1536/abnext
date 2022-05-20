package kr.or.abnext.domain;

/*
 * 생성일 2022.05.20.
 * 테이블명 TB_INSP_RESULT
 * 설명    검사결과 master
 * */

public class TbInspResult {
	private int inspNo;
	private int rqstNo;
	private int seq;
	private String inspStat;
	private String inspMemo;
	private String inspDt; //YYYYMMDD
	private int inspUserNo;
	private String diagCd; 
	private String geneOpinion;
	private String insDt;
	private int insId;
	private String uptDt;
	private int uptId;
	public int getInspNo() {
		return inspNo;
	}
	public void setInspNo(int inspNo) {
		this.inspNo = inspNo;
	}
	public int getRqstNo() {
		return rqstNo;
	}
	public void setRqstNo(int rqstNo) {
		this.rqstNo = rqstNo;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getInspStat() {
		return inspStat;
	}
	public void setInspStat(String inspStat) {
		this.inspStat = inspStat;
	}
	public String getInspMemo() {
		return inspMemo;
	}
	public void setInspMemo(String inspMemo) {
		this.inspMemo = inspMemo;
	}
	public String getInspDt() {
		return inspDt;
	}
	public void setInspDt(String inspDt) {
		this.inspDt = inspDt;
	}
	public int getInspUserNo() {
		return inspUserNo;
	}
	public void setInspUserNo(int inspUserNo) {
		this.inspUserNo = inspUserNo;
	}
	public String getDiagCd() {
		return diagCd;
	}
	public void setDiagCd(String diagCd) {
		this.diagCd = diagCd;
	}
	public String getGeneOpinion() {
		return geneOpinion;
	}
	public void setGeneOpinion(String geneOpinion) {
		this.geneOpinion = geneOpinion;
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
		return "TbInspResult [inspNo=" + inspNo + ", rqstNo=" + rqstNo + ", seq=" + seq + ", inspStat=" + inspStat
				+ ", inspMemo=" + inspMemo + ", inspDt=" + inspDt + ", inspUserNo=" + inspUserNo + ", diagCd=" + diagCd
				+ ", geneOpinion=" + geneOpinion + ", insDt=" + insDt + ", insId=" + insId + ", uptDt=" + uptDt
				+ ", uptId=" + uptId + "]";
	}
	
	
}
