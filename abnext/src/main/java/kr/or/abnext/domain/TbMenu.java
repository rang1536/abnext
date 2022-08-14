package kr.or.abnext.domain;

/*
 * 생성일 2022.05.20.
 * 테이블명 TB_MENU
 * 설명    메뉴관리 master
 * */

public class TbMenu {
	private int menuNo;
	private String menuNm;
	private int uppMenuNo;
	private int menuOrder; //대중소분류
	private String menuLev; //사용자 권한변 오픈할 권한레벨
	private String menuDtlMemo;

	private String menuUrl;
	private boolean menuLevChk;
	private String uppMenuNm;

	//추가
	public String levOne;
	public String levTwo;
	public String levThree;
	public String levFour;

	public boolean levOneChk;
	public boolean levTwoChk;
	public boolean levThreeChk;
	public boolean levFourChk;


	public boolean isLevOneChk() {
		return levOneChk;
	}
	public void setLevOneChk(boolean levOneChk) {
		this.levOneChk = levOneChk;
	}
	public boolean isLevTwoChk() {
		return levTwoChk;
	}
	public void setLevTwoChk(boolean levTwoChk) {
		this.levTwoChk = levTwoChk;
	}
	public boolean isLevThreeChk() {
		return levThreeChk;
	}
	public void setLevThreeChk(boolean levThreeChk) {
		this.levThreeChk = levThreeChk;
	}
	public boolean isLevFourChk() {
		return levFourChk;
	}
	public void setLevFourChk(boolean levFourChk) {
		this.levFourChk = levFourChk;
	}
	public String getLevOne() {
		return levOne;
	}
	public void setLevOne(String levOne) {
		this.levOne = levOne;
	}
	public String getLevTwo() {
		return levTwo;
	}
	public void setLevTwo(String levTwo) {
		this.levTwo = levTwo;
	}
	public String getLevThree() {
		return levThree;
	}
	public void setLevThree(String levThree) {
		this.levThree = levThree;
	}
	public String getLevFour() {
		return levFour;
	}
	public void setLevFour(String levFour) {
		this.levFour = levFour;
	}
	public int getMenuNo() {
		return menuNo;
	}
	public void setMenuNo(int menuNo) {
		this.menuNo = menuNo;
	}
	public String getMenuNm() {
		return menuNm;
	}
	public void setMenuNm(String menuNm) {
		this.menuNm = menuNm;
	}
	public int getUppMenuNo() {
		return uppMenuNo;
	}
	public void setUppMenuNo(int uppMenuNo) {
		this.uppMenuNo = uppMenuNo;
	}
	public int getMenuOrder() {
		return menuOrder;
	}
	public void setMenuOrder(int menuOrder) {
		this.menuOrder = menuOrder;
	}
	public String getMenuLev() {
		return menuLev;
	}
	public void setMenuLev(String menuLev) {
		this.menuLev = menuLev;
	}
	public String getMenuDtlMemo() {
		return menuDtlMemo;
	}
	public void setMenuDtlMemo(String menuDtlMemo) {
		this.menuDtlMemo = menuDtlMemo;
	}
	public String getMenuUrl() {
		return menuUrl;
	}
	public void setMenuUrl(String menuUrl) {
		this.menuUrl = menuUrl;
	}
	public boolean isMenuLevChk() {
		return menuLevChk;
	}
	public void setMenuLevChk(boolean menuLevChk) {
		this.menuLevChk = menuLevChk;
	}
	public String getUppMenuNm() {
		return uppMenuNm;
	}
	public void setUppMenuNm(String uppMenuNm) {
		this.uppMenuNm = uppMenuNm;
	}
	@Override
	public String toString() {
		return "TbMenu [menuNo=" + menuNo + ", menuNm=" + menuNm + ", uppMenuNo=" + uppMenuNo + ", menuOrder="
				+ menuOrder + ", menuLev=" + menuLev + ", menuDtlMemo=" + menuDtlMemo + ", menuUrl=" + menuUrl
				+ ", menuLevChk=" + menuLevChk + ", uppMenuNm=" + uppMenuNm + ", levOne=" + levOne + ", levTwo="
				+ levTwo + ", levThree=" + levThree + ", levFour=" + levFour + ", levOneChk=" + levOneChk
				+ ", levTwoChk=" + levTwoChk + ", levThreeChk=" + levThreeChk + ", levFourChk=" + levFourChk + "]";
	}

}
