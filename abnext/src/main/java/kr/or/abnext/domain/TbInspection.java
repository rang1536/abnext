package kr.or.abnext.domain;

import java.util.List;

/*
 * 생성일 2022.06.11.
 * 테이블명 TbInspection
 * 설명    진단검사MASTER
 * */

public class TbInspection {
	private String inspNo;
	private String rqstNo;
	private String sampleCode;
	private String sampleName;
	private String workerNo;
	private String workerNm;
	private String inspFirstCd;
	private String inspFirstNm;
	private String inspSecondCd;
	private String inspSecondNm;
	private String inspThirdCd;
	private String inspThirdNm;
	private String inspType;
	private String inspTypeNm;
	private String inspPrice;
	private String inspResult;
	private String insDt;
	private String insId;
	private String uptDt;
	private String uptId;
	// 수납
	private String sumCnt;
	private String payStat;

	private List<TbFile> inspFileList;

	private String priceComment;


	public String getPriceComment() {
		return priceComment;
	}
	public void setPriceComment(String priceComment) {
		this.priceComment = priceComment;
	}
	public List<TbFile> getInspFileList() {
		return inspFileList;
	}
	public void setInspFileList(List<TbFile> inspFileList) {
		this.inspFileList = inspFileList;
	}
	public String getInspNo() {
		return inspNo;
	}
	public void setInspNo(String inspNo) {
		this.inspNo = inspNo;
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
	public String getWorkerNo() {
		return workerNo;
	}
	public void setWorkerNo(String workerNo) {
		this.workerNo = workerNo;
	}
	public String getWorkerNm() {
		return workerNm;
	}
	public void setWorkerNm(String workerNm) {
		this.workerNm = workerNm;
	}
	public String getInspFirstCd() {
		return inspFirstCd;
	}
	public void setInspFirstCd(String inspFirstCd) {
		this.inspFirstCd = inspFirstCd;
	}
	public String getInspFirstNm() {
		return inspFirstNm;
	}
	public void setInspFirstNm(String inspFirstNm) {
		this.inspFirstNm = inspFirstNm;
	}
	public String getInspSecondCd() {
		return inspSecondCd;
	}
	public void setInspSecondCd(String inspSecondCd) {
		this.inspSecondCd = inspSecondCd;
	}
	public String getInspSecondNm() {
		return inspSecondNm;
	}
	public void setInspSecondNm(String inspSecondNm) {
		this.inspSecondNm = inspSecondNm;
	}
	public String getInspThirdCd() {
		return inspThirdCd;
	}
	public void setInspThirdCd(String inspThirdCd) {
		this.inspThirdCd = inspThirdCd;
	}
	public String getInspThirdNm() {
		return inspThirdNm;
	}
	public void setInspThirdNm(String inspThirdNm) {
		this.inspThirdNm = inspThirdNm;
	}
	public String getInspType() {
		return inspType;
	}
	public void setInspType(String inspType) {
		this.inspType = inspType;
	}
	public String getInspTypeNm() {
		return inspTypeNm;
	}
	public void setInspTypeNm(String inspTypeNm) {
		this.inspTypeNm = inspTypeNm;
	}
	public String getInspPrice() {
		return inspPrice;
	}
	public void setInspPrice(String inspPrice) {
		this.inspPrice = inspPrice;
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
	public String getSumCnt() {
		return sumCnt;
	}
	public void setSumCnt(String sumCnt) {
		this.sumCnt = sumCnt;
	}
	public String getPayStat() {
		return payStat;
	}
	public void setPayStat(String payStat) {
		this.payStat = payStat;
	}
	@Override
	public String toString() {
		return "TbInspection [inspNo=" + inspNo + ", rqstNo=" + rqstNo + ", sampleCode=" + sampleCode + ", sampleName="
				+ sampleName + ", workerNo=" + workerNo + ", workerNm=" + workerNm + ", inspFirstCd=" + inspFirstCd
				+ ", inspFirstNm=" + inspFirstNm + ", inspSecondCd=" + inspSecondCd + ", inspSecondNm=" + inspSecondNm
				+ ", inspThirdCd=" + inspThirdCd + ", inspThirdNm=" + inspThirdNm + ", inspType=" + inspType
				+ ", inspTypeNm=" + inspTypeNm + ", inspPrice=" + inspPrice + ", inspResult=" + inspResult + ", insDt="
				+ insDt + ", insId=" + insId + ", uptDt=" + uptDt + ", uptId=" + uptId + ", sumCnt=" + sumCnt
				+ ", payStat=" + payStat + ", inspFileList=" + inspFileList + ", priceComment=" + priceComment + "]";
	}


}