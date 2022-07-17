package kr.or.abnext.domain;

/*
 * 생성일 2022.05.20.
 * 테이블명 TB_INSP_OPINION
 * 설명    검사결과소견
 * */

public class TbInspOpinion {
	private int opinNo;
	private String inspNo;
	private String inspCd;
	private String inspSickCd;
	private String opinComment;
	private String insDt;
	private String insId;
	private String uptDt;
	private String uptId;
	public int getOpinNo() {
		return opinNo;
	}
	public void setOpinNo(int opinNo) {
		this.opinNo = opinNo;
	}
	public String getInspNo() {
		return inspNo;
	}
	public void setInspNo(String inspNo) {
		this.inspNo = inspNo;
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
	public String getOpinComment() {
		return opinComment;
	}
	public void setOpinComment(String opinComment) {
		this.opinComment = opinComment;
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
		return "TbInspOpinion [opinNo=" + opinNo + ", inspNo=" + inspNo + ", inspCd=" + inspCd + ", inspSickCd="
				+ inspSickCd + ", opinComment=" + opinComment + ", insDt=" + insDt + ", insId=" + insId + ", uptDt="
				+ uptDt + ", uptId=" + uptId + "]";
	}

}
