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
	private int menuLev; //사용자 권한변 오픈할 권한레벨
	private String menuDtlMemo;
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
	public int getMenuLev() {
		return menuLev;
	}
	public void setMenuLev(int menuLev) {
		this.menuLev = menuLev;
	}
	public String getMenuDtlMemo() {
		return menuDtlMemo;
	}
	public void setMenuDtlMemo(String menuDtlMemo) {
		this.menuDtlMemo = menuDtlMemo;
	}
	@Override
	public String toString() {
		return "TbMenu [menuNo=" + menuNo + ", menuNm=" + menuNm + ", uppMenuNo=" + uppMenuNo + ", menuOrder="
				+ menuOrder + ", menuLev=" + menuLev + ", menuDtlMemo=" + menuDtlMemo + "]";
	}
	
	
}
