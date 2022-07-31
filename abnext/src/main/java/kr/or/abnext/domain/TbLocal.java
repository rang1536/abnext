package kr.or.abnext.domain;

public class TbLocal {
	private int localNo;
	private String localNm;
	public int getLocalNo() {
		return localNo;
	}
	public void setLocalNo(int localNo) {
		this.localNo = localNo;
	}
	public String getLocalNm() {
		return localNm;
	}
	public void setLocalNm(String localNm) {
		this.localNm = localNm;
	}
	@Override
	public String toString() {
		return "TbLocal [localNo=" + localNo + ", localNm=" + localNm + "]";
	}


}
