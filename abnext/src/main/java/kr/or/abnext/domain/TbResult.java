package kr.or.abnext.domain;

import java.util.List;
import java.util.Map;

/*
 * 생성일 2022.07.23.
 * 테이블명 TbAntibiotic
 * 설명   항생제MASTER
 * */

public class TbResult {

	//진단번호
	private String inspNo;
	private String insId;
	//항생제
	private List<Map<String , Object>> antiList;
	//혈청
	private List<Map<String , Object>> serumList;
	//PCR
	private List<Map<String , Object>> pcrList;

	public String getInspNo() {
		return inspNo;
	}
	public void setInspNo(String inspNo) {
		this.inspNo = inspNo;
	}
	public String getInsId() {
		return insId;
	}
	public void setInsId(String insId) {
		this.insId = insId;
	}
	public List<Map<String, Object>> getAntiList() {
		return antiList;
	}
	public void setAntiList(List<Map<String, Object>> antiList) {
		this.antiList = antiList;
	}
	public List<Map<String, Object>> getSerumList() {
		return serumList;
	}
	public void setSerumList(List<Map<String, Object>> serumList) {
		this.serumList = serumList;
	}
	public List<Map<String, Object>> getPcrList() {
		return pcrList;
	}
	public void setPcrList(List<Map<String, Object>> pcrList) {
		this.pcrList = pcrList;
	}
	@Override
	public String toString() {
		return "TbResult [inspNo=" + inspNo + ", insId=" + insId + ", antiList=" + antiList + ", serumList=" + serumList
				+ ", pcrList=" + pcrList + "]";
	}

}