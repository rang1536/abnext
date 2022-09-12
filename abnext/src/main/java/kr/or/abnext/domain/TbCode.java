package kr.or.abnext.domain;

/*
 * 생성일 2022.05.20.
 * 테이블명 TB_CODE
 * 설명    공통코드 master
 * */

public class TbCode {
	private int codeNo;
	private String codeId;
	private String codeNm;
	private String codeNmGroup;
	private String codeIdNm;
	private String uppCodeId;
	private String codeGb;
	private String codeDtlMemo;
	private int codeLevel;
	private int sortIdx;
	private String insDt;
	private int insId;
	private int childCnt;
	private String searchKey;
	private String searchValue;

	//추가
	private String uppCodeNm;
	private String damdangYn;


	public String getDamdangYn() {
		return damdangYn;
	}
	public void setDamdangYn(String damdangYn) {
		this.damdangYn = damdangYn;
	}
	public String getUppCodeNm() {
		return uppCodeNm;
	}
	public void setUppCodeNm(String uppCodeNm) {
		this.uppCodeNm = uppCodeNm;
	}
	public int getCodeNo() {
		return codeNo;
	}
	public void setCodeNo(int codeNo) {
		this.codeNo = codeNo;
	}
	public String getCodeId() {
		return codeId;
	}
	public void setCodeId(String codeId) {
		this.codeId = codeId;
	}
	public String getCodeNm() {
		return codeNm;
	}
	public void setCodeNm(String codeNm) {
		this.codeNm = codeNm;
	}
	public String getCodeNmGroup() {
		return codeNmGroup;
	}
	public void setCodeNmGroup(String codeNmGroup) {
		this.codeNmGroup = codeNmGroup;
	}
	public String getCodeIdNm() {
		return codeIdNm;
	}
	public void setCodeIdNm(String codeIdNm) {
		this.codeIdNm = codeIdNm;
	}
	public String getUppCodeId() {
		return uppCodeId;
	}
	public void setUppCodeId(String uppCodeId) {
		this.uppCodeId = uppCodeId;
	}
	public String getCodeGb() {
		return codeGb;
	}
	public void setCodeGb(String codeGb) {
		this.codeGb = codeGb;
	}
	public String getCodeDtlMemo() {
		return codeDtlMemo;
	}
	public void setCodeDtlMemo(String codeDtlMemo) {
		this.codeDtlMemo = codeDtlMemo;
	}

	public int getCodeLevel() {
		return codeLevel;
	}
	public void setCodeLevel(int codeLevel) {
		this.codeLevel = codeLevel;
	}
	public int getSortIdx() {
		return sortIdx;
	}
	public void setSortIdx(int sortIdx) {
		this.sortIdx = sortIdx;
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

	public int getChildCnt() {
		return childCnt;
	}
	public void setChildCnt(int childCnt) {
		this.childCnt = childCnt;
	}

	public String getSearchKey() {
		return searchKey;
	}
	public void setSearchKey(String searchKey) {
		this.searchKey = searchKey;
	}
	public String getSearchValue() {
		return searchValue;
	}
	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}
	@Override
	public String toString() {
		return "TbCode [codeNo=" + codeNo + ", codeId=" + codeId + ", codeNm=" + codeNm + ", codeNmGroup=" + codeNmGroup
				+ ", codeIdNm=" + codeIdNm + ", uppCodeId=" + uppCodeId + ", codeGb=" + codeGb + ", codeDtlMemo="
				+ codeDtlMemo + ", codeLevel=" + codeLevel + ", sortIdx=" + sortIdx + ", insDt=" + insDt + ", insId="
				+ insId + ", childCnt=" + childCnt + ", searchKey=" + searchKey + ", searchValue=" + searchValue
				+ ", uppCodeNm=" + uppCodeNm + ", damdangYn=" + damdangYn + "]";
	}


}
