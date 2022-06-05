package kr.or.abnext.domain;

/*
 * 생성일 2022.05.20.
 * 테이블명 TB_USER
 * 설명    회원관리 master
 * */

public class TbUser {
	private int userNo;
	private String userId;
	private String userPass;
	private String userLev;
	private String userTel;
	private String userHp;
	private String userFax;
	private String userAdr;
	private String userDtlAdr;
	private String userZip;
	private String userEmail;
	private String userAccountNo; //계좌번호
	private String userBankNm;
	private String userMemo;
	private String userRn;
	private int hospNo;
	private int farmNo;
	private String insDt;
	private int insId;
	private String uptDt;
	private int uptId;
	private String userNm;
	
	//추가, 시도명, 시군구명
	private String sidoNm;
	private String sigunguNm;
	
	
	
	public String getUserNm() {
		return userNm;
	}
	public void setUserNm(String userNm) {
		this.userNm = userNm;
	}
	public String getUserZip() {
		return userZip;
	}
	public void setUserZip(String userZip) {
		this.userZip = userZip;
	}
	public String getSidoNm() {
		return sidoNm;
	}
	public void setSidoNm(String sidoNm) {
		this.sidoNm = sidoNm;
	}
	public String getSigunguNm() {
		return sigunguNm;
	}
	public void setSigunguNm(String sigunguNm) {
		this.sigunguNm = sigunguNm;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	public String getUserLev() {
		return userLev;
	}
	public void setUserLev(String userLev) {
		this.userLev = userLev;
	}
	public String getUserTel() {
		return userTel;
	}
	public void setUserTel(String userTel) {
		this.userTel = userTel;
	}
	public String getUserHp() {
		return userHp;
	}
	public void setUserHp(String userHp) {
		this.userHp = userHp;
	}
	public String getUserFax() {
		return userFax;
	}
	public void setUserFax(String userFax) {
		this.userFax = userFax;
	}
	public String getUserAdr() {
		return userAdr;
	}
	public void setUserAdr(String userAdr) {
		this.userAdr = userAdr;
	}
	public String getUserDtlAdr() {
		return userDtlAdr;
	}
	public void setUserDtlAdr(String userDtlAdr) {
		this.userDtlAdr = userDtlAdr;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserAccountNo() {
		return userAccountNo;
	}
	public void setUserAccountNo(String userAccountNo) {
		this.userAccountNo = userAccountNo;
	}
	public String getUserBankNm() {
		return userBankNm;
	}
	public void setUserBankNm(String userBankNm) {
		this.userBankNm = userBankNm;
	}
	public String getUserMemo() {
		return userMemo;
	}
	public void setUserMemo(String userMemo) {
		this.userMemo = userMemo;
	}
	public String getUserRn() {
		return userRn;
	}
	public void setUserRn(String userRn) {
		this.userRn = userRn;
	}
	public int getHospNo() {
		return hospNo;
	}
	public void setHospNo(int hospNo) {
		this.hospNo = hospNo;
	}
	public int getFarmNo() {
		return farmNo;
	}
	public void setFarmNo(int farmNo) {
		this.farmNo = farmNo;
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
		return "TbUser [userNo=" + userNo + ", userId=" + userId + ", userPass=" + userPass + ", userLev=" + userLev
				+ ", userTel=" + userTel + ", userHp=" + userHp + ", userFax=" + userFax + ", userAdr=" + userAdr
				+ ", userDtlAdr=" + userDtlAdr + ", userZip=" + userZip + ", userEmail=" + userEmail
				+ ", userAccountNo=" + userAccountNo + ", userBankNm=" + userBankNm + ", userMemo=" + userMemo
				+ ", userRn=" + userRn + ", hospNo=" + hospNo + ", farmNo=" + farmNo + ", insDt=" + insDt + ", insId="
				+ insId + ", uptDt=" + uptDt + ", uptId=" + uptId + ", userNm=" + userNm + ", sidoNm=" + sidoNm
				+ ", sigunguNm=" + sigunguNm + "]";
	}
	
}
