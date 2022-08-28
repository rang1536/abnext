package kr.or.abnext.domain;

import org.springframework.web.multipart.MultipartFile;

public class AddHospital {
	private int addHospNo;
	private String addHospNm;
	private String addHospTel;
	private String addHospHp;
	private String addHospEmail;
	private String addHospFax;
	private String addHospAdr;
	private String addHospDtlAdr;
	private String addHospZip;
	private String addHospCeo;
	private String addHospRn;
	private String insDt;
	private String insId;
	private String uptDt;
	private String uptId;

	//추가
	private String addHospSidoNm;
	private String addHospSigunguNm;
	private String addHospBankNm;
	private String addHospAccountNo;

	private MultipartFile addHospRnFile;
	private String gubun;

	//추가. 2022.06.18.
	private String addHospMemo;
	private String addPayGb;
	private String addPayDate;
	private String addPayManagerNm;
	private String addPayManagerHp;
	private String addPayMemo;
	private String addHospFirstDoctor;
	private String addHospFirstDoctorNm;

	private String addHospRnFilePathName;
	private String addHospSigunguCd;
	public int getAddHospNo() {
		return addHospNo;
	}
	public void setAddHospNo(int addHospNo) {
		this.addHospNo = addHospNo;
	}
	public String getAddHospNm() {
		return addHospNm;
	}
	public void setAddHospNm(String addHospNm) {
		this.addHospNm = addHospNm;
	}
	public String getAddHospTel() {
		return addHospTel;
	}
	public void setAddHospTel(String addHospTel) {
		this.addHospTel = addHospTel;
	}
	public String getAddHospHp() {
		return addHospHp;
	}
	public void setAddHospHp(String addHospHp) {
		this.addHospHp = addHospHp;
	}
	public String getAddHospEmail() {
		return addHospEmail;
	}
	public void setAddHospEmail(String addHospEmail) {
		this.addHospEmail = addHospEmail;
	}
	public String getAddHospFax() {
		return addHospFax;
	}
	public void setAddHospFax(String addHospFax) {
		this.addHospFax = addHospFax;
	}
	public String getAddHospAdr() {
		return addHospAdr;
	}
	public void setAddHospAdr(String addHospAdr) {
		this.addHospAdr = addHospAdr;
	}
	public String getAddHospDtlAdr() {
		return addHospDtlAdr;
	}
	public void setAddHospDtlAdr(String addHospDtlAdr) {
		this.addHospDtlAdr = addHospDtlAdr;
	}
	public String getAddHospZip() {
		return addHospZip;
	}
	public void setAddHospZip(String addHospZip) {
		this.addHospZip = addHospZip;
	}
	public String getAddHospCeo() {
		return addHospCeo;
	}
	public void setAddHospCeo(String addHospCeo) {
		this.addHospCeo = addHospCeo;
	}
	public String getAddHospRn() {
		return addHospRn;
	}
	public void setAddHospRn(String addHospRn) {
		this.addHospRn = addHospRn;
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
	public String getAddHospSidoNm() {
		return addHospSidoNm;
	}
	public void setAddHospSidoNm(String addHospSidoNm) {
		this.addHospSidoNm = addHospSidoNm;
	}
	public String getAddHospSigunguNm() {
		return addHospSigunguNm;
	}
	public void setAddHospSigunguNm(String addHospSigunguNm) {
		this.addHospSigunguNm = addHospSigunguNm;
	}
	public String getAddHospBankNm() {
		return addHospBankNm;
	}
	public void setAddHospBankNm(String addHospBankNm) {
		this.addHospBankNm = addHospBankNm;
	}
	public String getAddHospAccountNo() {
		return addHospAccountNo;
	}
	public void setAddHospAccountNo(String addHospAccountNo) {
		this.addHospAccountNo = addHospAccountNo;
	}
	public MultipartFile getAddHospRnFile() {
		return addHospRnFile;
	}
	public void setAddHospRnFile(MultipartFile addHospRnFile) {
		this.addHospRnFile = addHospRnFile;
	}
	public String getGubun() {
		return gubun;
	}
	public void setGubun(String gubun) {
		this.gubun = gubun;
	}
	public String getAddHospMemo() {
		return addHospMemo;
	}
	public void setAddHospMemo(String addHospMemo) {
		this.addHospMemo = addHospMemo;
	}
	public String getAddPayGb() {
		return addPayGb;
	}
	public void setAddPayGb(String addPayGb) {
		this.addPayGb = addPayGb;
	}
	public String getAddPayDate() {
		return addPayDate;
	}
	public void setAddPayDate(String addPayDate) {
		this.addPayDate = addPayDate;
	}
	public String getAddPayManagerNm() {
		return addPayManagerNm;
	}
	public void setAddPayManagerNm(String addPayManagerNm) {
		this.addPayManagerNm = addPayManagerNm;
	}
	public String getAddPayManagerHp() {
		return addPayManagerHp;
	}
	public void setAddPayManagerHp(String addPayManagerHp) {
		this.addPayManagerHp = addPayManagerHp;
	}
	public String getAddPayMemo() {
		return addPayMemo;
	}
	public void setAddPayMemo(String addPayMemo) {
		this.addPayMemo = addPayMemo;
	}
	public String getAddHospFirstDoctor() {
		return addHospFirstDoctor;
	}
	public void setAddHospFirstDoctor(String addHospFirstDoctor) {
		this.addHospFirstDoctor = addHospFirstDoctor;
	}
	public String getAddHospFirstDoctorNm() {
		return addHospFirstDoctorNm;
	}
	public void setAddHospFirstDoctorNm(String addHospFirstDoctorNm) {
		this.addHospFirstDoctorNm = addHospFirstDoctorNm;
	}
	public String getAddHospRnFilePathName() {
		return addHospRnFilePathName;
	}
	public void setAddHospRnFilePathName(String addHospRnFilePathName) {
		this.addHospRnFilePathName = addHospRnFilePathName;
	}
	public String getAddHospSigunguCd() {
		return addHospSigunguCd;
	}
	public void setAddHospSigunguCd(String addHospSigunguCd) {
		this.addHospSigunguCd = addHospSigunguCd;
	}
	@Override
	public String toString() {
		return "AddHospital [addHospNo=" + addHospNo + ", addHospNm=" + addHospNm + ", addHospTel=" + addHospTel
				+ ", addHospHp=" + addHospHp + ", addHospEmail=" + addHospEmail + ", addHospFax=" + addHospFax
				+ ", addHospAdr=" + addHospAdr + ", addHospDtlAdr=" + addHospDtlAdr + ", addHospZip=" + addHospZip
				+ ", addHospCeo=" + addHospCeo + ", addHospRn=" + addHospRn + ", insDt=" + insDt + ", insId=" + insId
				+ ", uptDt=" + uptDt + ", uptId=" + uptId + ", addHospSidoNm=" + addHospSidoNm + ", addHospSigunguNm="
				+ addHospSigunguNm + ", addHospBankNm=" + addHospBankNm + ", addHospAccountNo=" + addHospAccountNo
				+ ", addHospRnFile=" + addHospRnFile + ", gubun=" + gubun + ", addHospMemo=" + addHospMemo
				+ ", addPayGb=" + addPayGb + ", addPayDate=" + addPayDate + ", addPayManagerNm=" + addPayManagerNm
				+ ", addPayManagerHp=" + addPayManagerHp + ", addPayMemo=" + addPayMemo + ", addHospFirstDoctor="
				+ addHospFirstDoctor + ", addHospFirstDoctorNm=" + addHospFirstDoctorNm + ", addHospRnFilePathName="
				+ addHospRnFilePathName + ", addHospSigunguCd=" + addHospSigunguCd + "]";
	}


}
