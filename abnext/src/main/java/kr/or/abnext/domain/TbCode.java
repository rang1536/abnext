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
	private String uppCodeId;
	private String codeGb;
	private String codeDtlMemo;
	private int sortIdx;
	private String insDt;
	private int insId;
	
	
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
	@Override
	public String toString() {
		return "TbCode [codeNo=" + codeNo + ", codeId=" + codeId + ", codeNm=" + codeNm + ", uppCodeId=" + uppCodeId
				+ ", codeGb=" + codeGb + ", codeDtlMemo=" + codeDtlMemo + ", sortIdx=" + sortIdx + ", insDt=" + insDt
				+ ", insId=" + insId + "]";
	}
	
	
	
	
}
