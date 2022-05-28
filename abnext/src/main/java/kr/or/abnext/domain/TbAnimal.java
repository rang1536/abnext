package kr.or.abnext.domain;

/*
 * 생성일 2022.05.28.
 * 테이블명 TB_ANIMAL
 * 설명   동물관리 master
 * */

public class TbAnimal {
	private int animNo;
	private String animNm;
	private String cate1;
	private String cate2;
	private String cate3;
	private String birth;
	private String gender;
	private String registerNo;
	private String userNo;
	private String userNm;
	private String memo;
	private String insDt;
	private int insId;
	private String uptDt;
	private int uptId;
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
	public String getCate1() {
		return cate1;
	}
	public void setCate1(String cate1) {
		this.cate1 = cate1;
	}
	public String getCate2() {
		return cate2;
	}
	public void setCate2(String cate2) {
		this.cate2 = cate2;
	}
	public String getCate3() {
		return cate3;
	}
	public void setCate3(String cate3) {
		this.cate3 = cate3;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getRegisterNo() {
		return registerNo;
	}
	public void setRegisterNo(String registerNo) {
		this.registerNo = registerNo;
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
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
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
		return "TbAnimal [animNo=" + animNo + ", animNm=" + animNm + ", cate1=" + cate1 + ", cate2=" + cate2
				+ ", cate3=" + cate3 + ", birth=" + birth + ", gender=" + gender + ", registerNo=" + registerNo
				+ ", userNo=" + userNo + ", userNm=" + userNm + ", memo=" + memo + ", insDt=" + insDt + ", insId="
				+ insId + ", uptDt=" + uptDt + ", uptId=" + uptId + "]";
	}
	
}
