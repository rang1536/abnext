package kr.or.abnext.domain;

/*
 * 생성일 2022.06.25.
 * 설명    myFarm
 * */

public class MyFarm {
	//상단
	private String reqCnt;
	private String recCnt;
	private String procCnt;
	private String finCnt;

	//하단 그리드
	private String rqstDt;
	private String rqstNo;
	private String price;
	private String payStat;

	//등록자
	private String insId;

	// 조회조건
	private String searchStr;

	//리스트형
	private String inspSecondNm;
	private String procStatNm;
	private String userNo;
	private String userLev;

	public String getReqCnt() {
		return reqCnt;
	}

	public void setReqCnt(String reqCnt) {
		this.reqCnt = reqCnt;
	}

	public String getRecCnt() {
		return recCnt;
	}

	public void setRecCnt(String recCnt) {
		this.recCnt = recCnt;
	}

	public String getProcCnt() {
		return procCnt;
	}

	public void setProcCnt(String procCnt) {
		this.procCnt = procCnt;
	}

	public String getFinCnt() {
		return finCnt;
	}

	public void setFinCnt(String finCnt) {
		this.finCnt = finCnt;
	}

	public String getRqstDt() {
		return rqstDt;
	}

	public void setRqstDt(String rqstDt) {
		this.rqstDt = rqstDt;
	}

	public String getRqstNo() {
		return rqstNo;
	}

	public void setRqstNo(String rqstNo) {
		this.rqstNo = rqstNo;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getPayStat() {
		return payStat;
	}

	public void setPayStat(String payStat) {
		this.payStat = payStat;
	}

	public String getInsId() {
		return insId;
	}

	public void setInsId(String insId) {
		this.insId = insId;
	}

	public String getSearchStr() {
		return searchStr;
	}

	public void setSearchStr(String searchStr) {
		this.searchStr = searchStr;
	}

	public String getInspSecondNm() {
		return inspSecondNm;
	}

	public void setInspSecondNm(String inspSecondNm) {
		this.inspSecondNm = inspSecondNm;
	}

	public String getProcStatNm() {
		return procStatNm;
	}

	public void setProcStatNm(String procStatNm) {
		this.procStatNm = procStatNm;
	}

	public String getUserNo() {
		return userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}

	public String getUserLev() {
		return userLev;
	}

	public void setUserLev(String userLev) {
		this.userLev = userLev;
	}

	@Override
	public String toString() {
		return "MyFarm [reqCnt=" + reqCnt + ", recCnt=" + recCnt + ", procCnt=" + procCnt + ", finCnt=" + finCnt
				+ ", rqstDt=" + rqstDt + ", rqstNo=" + rqstNo + ", price=" + price + ", payStat=" + payStat + ", insId="
				+ insId + ", searchStr=" + searchStr + ", inspSecondNm=" + inspSecondNm + ", procStatNm=" + procStatNm
				+ ", userNo=" + userNo + ", userLev=" + userLev + "]";
	}


}
