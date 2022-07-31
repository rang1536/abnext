package kr.or.abnext.domain;

import java.util.Arrays;
import java.util.List;

public class SearchView {
	private String hospNo;
	private String docNo;
	private String animButler;
	private String stDt;
	private String endDt;
	private String[] sidoNo;
	private String[] animThirdCd;
	private String[] cate4;
	private String[] cate3;
	public String getHospNo() {
		return hospNo;
	}
	public void setHospNo(String hospNo) {
		this.hospNo = hospNo;
	}


	public String getDocNo() {
		return docNo;
	}
	public void setDocNo(String docNo) {
		this.docNo = docNo;
	}
	public String getAnimButler() {
		return animButler;
	}
	public void setAnimButler(String animButler) {
		this.animButler = animButler;
	}
	public String getStDt() {
		return stDt;
	}
	public void setStDt(String stDt) {
		this.stDt = stDt;
	}
	public String getEndDt() {
		return endDt;
	}
	public void setEndDt(String endDt) {
		this.endDt = endDt;
	}


	public String[] getSidoNo() {
		return sidoNo;
	}
	public void setSidoNo(String[] sidoNo) {
		this.sidoNo = sidoNo;
	}
	public String[] getAnimThirdCd() {
		return animThirdCd;
	}
	public void setAnimThirdCd(String[] animThirdCd) {
		this.animThirdCd = animThirdCd;
	}
	public String[] getCate4() {
		return cate4;
	}
	public void setCate4(String[] cate4) {
		this.cate4 = cate4;
	}
	public String[] getCate3() {
		return cate3;
	}
	public void setCate3(String[] cate3) {
		this.cate3 = cate3;
	}
	@Override
	public String toString() {
		return "SearchView [hospNo=" + hospNo + ", docNo=" + docNo + ", animButler=" + animButler + ", stDt=" + stDt
				+ ", endDt=" + endDt + ", sidoNo=" + Arrays.toString(sidoNo) + ", animThirdCd="
				+ Arrays.toString(animThirdCd) + ", cate4=" + Arrays.toString(cate4) + ", cate3="
				+ Arrays.toString(cate3) + "]";
	}

}
