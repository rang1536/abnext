package kr.or.abnext.domain;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

/*
 * 생성일 2022.05.20.
 * 테이블명 TB_RCEPT
 * 설명    접수관리MASTER
 * */

public class TbRcept {
	private int rqstNo;
	private String hospNo;
	private String hospNm;
	private String userNo;
	private String userNm;
	private String animNo;
	private String animNm;
	private String farmNo;
	private String farmNm;
	private String docNo;
	private String docNm;
	private String animButler;
	private String butlerSido;
	private String butlerSigungu;
	private String butlerSigunguCd;
	private String animBirth;
	private String animFirstCd;
	private String animSecondCd;
	private String AnimThirdCd;
	private String animFirstNm;
	private String animSecondNm;
	private String AnimThirdNm;
	private String animSex;
	private String rqstDt;
	private String procStat;
	private String procStatNm;
	private String rqstMemo;
	private String payGb;
	private String price;
	private String payStat;
	private String result;
	private List<Map<String , Object>> inspList;
	private List<Map<String , Object>> smplList;
	private String [] sampleArr;
	private String insDt;
	private String insId;
	private String uptDt;
	private String uptId;
	public int getRqstNo() {
		return rqstNo;
	}
	public void setRqstNo(int rqstNo) {
		this.rqstNo = rqstNo;
	}
	public String getHospNo() {
		return hospNo;
	}
	public void setHospNo(String hospNo) {
		this.hospNo = hospNo;
	}
	public String getHospNm() {
		return hospNm;
	}
	public void setHospNm(String hospNm) {
		this.hospNm = hospNm;
	}
	public String getUserNo() {
		return userNo;
	}
	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}
	public String getUserNm() {
		return userNm;
	}
	public void setUserNm(String userNm) {
		this.userNm = userNm;
	}
	public String getAnimNo() {
		return animNo;
	}
	public void setAnimNo(String animNo) {
		this.animNo = animNo;
	}
	public String getAnimNm() {
		return animNm;
	}
	public void setAnimNm(String animNm) {
		this.animNm = animNm;
	}
	public String getFarmNo() {
		return farmNo;
	}
	public void setFarmNo(String farmNo) {
		this.farmNo = farmNo;
	}
	public String getFarmNm() {
		return farmNm;
	}
	public void setFarmNm(String farmNm) {
		this.farmNm = farmNm;
	}
	public String getDocNo() {
		return docNo;
	}
	public void setDocNo(String docNo) {
		this.docNo = docNo;
	}
	public String getDocNm() {
		return docNm;
	}
	public void setDocNm(String docNm) {
		this.docNm = docNm;
	}
	public String getAnimButler() {
		return animButler;
	}
	public void setAnimButler(String animButler) {
		this.animButler = animButler;
	}
	public String getButlerSido() {
		return butlerSido;
	}
	public void setButlerSido(String butlerSido) {
		this.butlerSido = butlerSido;
	}
	public String getButlerSigungu() {
		return butlerSigungu;
	}
	public void setButlerSigungu(String butlerSigungu) {
		this.butlerSigungu = butlerSigungu;
	}
	public String getButlerSigunguCd() {
		return butlerSigunguCd;
	}
	public void setButlerSigunguCd(String butlerSigunguCd) {
		this.butlerSigunguCd = butlerSigunguCd;
	}
	public String getAnimBirth() {
		return animBirth;
	}
	public void setAnimBirth(String animBirth) {
		this.animBirth = animBirth;
	}
	public String getAnimFirstCd() {
		return animFirstCd;
	}
	public void setAnimFirstCd(String animFirstCd) {
		this.animFirstCd = animFirstCd;
	}
	public String getAnimSecondCd() {
		return animSecondCd;
	}
	public void setAnimSecondCd(String animSecondCd) {
		this.animSecondCd = animSecondCd;
	}
	public String getAnimThirdCd() {
		return AnimThirdCd;
	}
	public void setAnimThirdCd(String animThirdCd) {
		AnimThirdCd = animThirdCd;
	}
	public String getAnimFirstNm() {
		return animFirstNm;
	}
	public void setAnimFirstNm(String animFirstNm) {
		this.animFirstNm = animFirstNm;
	}
	public String getAnimSecondNm() {
		return animSecondNm;
	}
	public void setAnimSecondNm(String animSecondNm) {
		this.animSecondNm = animSecondNm;
	}
	public String getAnimThirdNm() {
		return AnimThirdNm;
	}
	public void setAnimThirdNm(String animThirdNm) {
		AnimThirdNm = animThirdNm;
	}
	public String getAnimSex() {
		return animSex;
	}
	public void setAnimSex(String animSex) {
		this.animSex = animSex;
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
	public List<Map<String, Object>> getInspList() {
		return inspList;
	}
	public void setInspList(List<Map<String, Object>> inspList) {
		this.inspList = inspList;
	}
	public List<Map<String, Object>> getSmplList() {
		return smplList;
	}
	public void setSmplList(List<Map<String, Object>> smplList) {
		this.smplList = smplList;
	}
	public String[] getSampleArr() {
		return sampleArr;
	}
	public void setSampleArr(String[] sampleArr) {
		this.sampleArr = sampleArr;
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

	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	@Override
	public String toString() {
		return "TbRcept [rqstNo=" + rqstNo + ", hospNo=" + hospNo + ", hospNm=" + hospNm + ", userNo=" + userNo
				+ ", userNm=" + userNm + ", animNo=" + animNo + ", animNm=" + animNm + ", farmNo=" + farmNo
				+ ", farmNm=" + farmNm + ", docNo=" + docNo + ", docNm=" + docNm + ", animButler=" + animButler
				+ ", butlerSido=" + butlerSido + ", butlerSigungu=" + butlerSigungu + ", butlerSigunguCd="
				+ butlerSigunguCd + ", animBirth=" + animBirth + ", animFirstCd=" + animFirstCd + ", animSecondCd="
				+ animSecondCd + ", AnimThirdCd=" + AnimThirdCd + ", animFirstNm=" + animFirstNm + ", animSecondNm="
				+ animSecondNm + ", AnimThirdNm=" + AnimThirdNm + ", animSex=" + animSex + ", rqstDt=" + rqstDt
				+ ", procStat=" + procStat + ", procStatNm=" + procStatNm + ", rqstMemo=" + rqstMemo + ", payGb="
				+ payGb + ", price=" + price + ", payStat=" + payStat + ", result=" + result + ", inspList=" + inspList
				+ ", smplList=" + smplList + ", sampleArr=" + Arrays.toString(sampleArr) + ", insDt=" + insDt
				+ ", insId=" + insId + ", uptDt=" + uptDt + ", uptId=" + uptId + "]";
	}

}
