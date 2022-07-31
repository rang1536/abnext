package kr.or.abnext.domain;

public class SickCdView {
	private String codeId;
	private String cate1;
	private String cate2;
	private String cate3;
	private String cate4;
	private String memo;
	private String etc1;
	private String etc2;
	private String etc3;
	private String etc4;
	private String etc5;
	public String getCodeId() {
		return codeId;
	}
	public void setCodeId(String codeId) {
		this.codeId = codeId;
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
	public String getCate4() {
		return cate4;
	}
	public void setCate4(String cate4) {
		this.cate4 = cate4;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public String getEtc1() {
		return etc1;
	}
	public void setEtc1(String etc1) {
		this.etc1 = etc1;
	}
	public String getEtc2() {
		return etc2;
	}
	public void setEtc2(String etc2) {
		this.etc2 = etc2;
	}
	public String getEtc3() {
		return etc3;
	}
	public void setEtc3(String etc3) {
		this.etc3 = etc3;
	}
	public String getEtc4() {
		return etc4;
	}
	public void setEtc4(String etc4) {
		this.etc4 = etc4;
	}
	public String getEtc5() {
		return etc5;
	}
	public void setEtc5(String etc5) {
		this.etc5 = etc5;
	}
	@Override
	public String toString() {
		return "SickCdView [codeId=" + codeId + ", cate1=" + cate1 + ", cate2=" + cate2 + ", cate3=" + cate3
				+ ", cate4=" + cate4 + ", memo=" + memo + ", etc1=" + etc1 + ", etc2=" + etc2 + ", etc3=" + etc3
				+ ", etc4=" + etc4 + ", etc5=" + etc5 + "]";
	}


}
