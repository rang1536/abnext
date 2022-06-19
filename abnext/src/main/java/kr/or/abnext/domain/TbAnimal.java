package kr.or.abnext.domain;

/*
 * 생성일 2022.05.28.
 * 테이블명 TB_ANIMAL
 * 설명   동물관리 master
 * */

public class TbAnimal {
	private String animNo;
	private String animNm;
	private String animFirstCd;
	private String animSecondCd;
	private String animThirdCd;
	private String animBirth;
	private String animSex;
	private String userNo;
	private String userNm;
	private String sigunguCd;
	private String memo;
	private String insDt;
	private String insId;
	private String uptDt;
	private String uptId;
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
		return animThirdCd;
	}
	public void setAnimThirdCd(String animThirdCd) {
		this.animThirdCd = animThirdCd;
	}
	public String getAnimBirth() {
		return animBirth;
	}
	public void setAnimBirth(String animBirth) {
		this.animBirth = animBirth;
	}
	public String getAnimSex() {
		return animSex;
	}
	public void setAnimSex(String animSex) {
		this.animSex = animSex;
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
	public String getSigunguCd() {
		return sigunguCd;
	}
	public void setSigunguCd(String sigunguCd) {
		this.sigunguCd = sigunguCd;
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
		return "TbAnimal [animNo=" + animNo + ", animNm=" + animNm + ", animFirstCd=" + animFirstCd + ", animSecondCd="
				+ animSecondCd + ", animThirdCd=" + animThirdCd + ", animBirth=" + animBirth + ", animSex=" + animSex
				+ ", userNo=" + userNo + ", userNm=" + userNm + ", sigunguCd=" + sigunguCd + ", memo=" + memo
				+ ", insDt=" + insDt + ", insId=" + insId + ", uptDt=" + uptDt + ", uptId=" + uptId + "]";
	}

}
