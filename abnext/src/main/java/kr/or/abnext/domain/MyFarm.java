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

	@Override
	public String toString() {
		return "MyFarm [reqCnt=" + reqCnt + ", recCnt=" + recCnt + ", procCnt=" + procCnt + ", finCnt=" + finCnt
				+ ", rqstDt=" + rqstDt + ", rqstNo=" + rqstNo + ", price=" + price + ", payStat=" + payStat + ", insId="
				+ insId + ", searchStr=" + searchStr + "]";
	}


}
