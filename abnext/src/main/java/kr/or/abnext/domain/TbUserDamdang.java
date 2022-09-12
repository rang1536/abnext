package kr.or.abnext.domain;

public class TbUserDamdang {
	private int userNo;
	private String codeId;
	private String codeNm;
	private String damdangYn;
	private String uppCodeNm;


	public String getUppCodeNm() {
		return uppCodeNm;
	}
	public void setUppCodeNm(String uppCodeNm) {
		this.uppCodeNm = uppCodeNm;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
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
	public String getDamdangYn() {
		return damdangYn;
	}
	public void setDamdangYn(String damdangYn) {
		this.damdangYn = damdangYn;
	}
	@Override
	public String toString() {
		return "TbUserDamdang [userNo=" + userNo + ", codeId=" + codeId + ", codeNm=" + codeNm + ", damdangYn="
				+ damdangYn + ", uppCodeNm=" + uppCodeNm + "]";
	}


}
