package kr.or.abnext.domain;

import org.springframework.web.multipart.MultipartFile;

public class AddFarm {
	private int addFarmNo;
	private String addFarmNm;
	private String addFarmCeo;
	private String addFarmTel;
	private String addFarmHp;
	private String addFarmFax;
	private String addFarmAdr;
	private String addFarmDtlAdr;
	private String addFarmEmail;
	private String addFarmRn;
	private String addFarmZip;
	private String insDt;
	private String insId;
	private String uptDt;
	private String uptId;

	//추가
	private String addFarmSidoNm;
	private String addFarmSigunguNm;
	private String addFarmBankNm;
	private String addFarmAccountNo;

	private MultipartFile addFarmRnFile;

	//추가. 2022.06.18.
	private String addFarmMemo;
	private String addPayGb;
	private String addPayDate;
	private String addPayManagerNm;
	private String addPayManagerHp;
	private String addPayMemo;

	private String addFarmRnFilePathName;
	private String addFarmSigunguCd;
	public int getAddFarmNo() {
		return addFarmNo;
	}
	public void setAddFarmNo(int addFarmNo) {
		this.addFarmNo = addFarmNo;
	}
	public String getAddFarmNm() {
		return addFarmNm;
	}
	public void setAddFarmNm(String addFarmNm) {
		this.addFarmNm = addFarmNm;
	}
	public String getAddFarmCeo() {
		return addFarmCeo;
	}
	public void setAddFarmCeo(String addFarmCeo) {
		this.addFarmCeo = addFarmCeo;
	}
	public String getAddFarmTel() {
		return addFarmTel;
	}
	public void setAddFarmTel(String addFarmTel) {
		this.addFarmTel = addFarmTel;
	}
	public String getAddFarmHp() {
		return addFarmHp;
	}
	public void setAddFarmHp(String addFarmHp) {
		this.addFarmHp = addFarmHp;
	}
	public String getAddFarmFax() {
		return addFarmFax;
	}
	public void setAddFarmFax(String addFarmFax) {
		this.addFarmFax = addFarmFax;
	}
	public String getAddFarmAdr() {
		return addFarmAdr;
	}
	public void setAddFarmAdr(String addFarmAdr) {
		this.addFarmAdr = addFarmAdr;
	}
	public String getAddFarmDtlAdr() {
		return addFarmDtlAdr;
	}
	public void setAddFarmDtlAdr(String addFarmDtlAdr) {
		this.addFarmDtlAdr = addFarmDtlAdr;
	}
	public String getAddFarmEmail() {
		return addFarmEmail;
	}
	public void setAddFarmEmail(String addFarmEmail) {
		this.addFarmEmail = addFarmEmail;
	}
	public String getAddFarmRn() {
		return addFarmRn;
	}
	public void setAddFarmRn(String addFarmRn) {
		this.addFarmRn = addFarmRn;
	}
	public String getAddFarmZip() {
		return addFarmZip;
	}
	public void setAddFarmZip(String addFarmZip) {
		this.addFarmZip = addFarmZip;
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
	public String getAddFarmSidoNm() {
		return addFarmSidoNm;
	}
	public void setAddFarmSidoNm(String addFarmSidoNm) {
		this.addFarmSidoNm = addFarmSidoNm;
	}
	public String getAddFarmSigunguNm() {
		return addFarmSigunguNm;
	}
	public void setAddFarmSigunguNm(String addFarmSigunguNm) {
		this.addFarmSigunguNm = addFarmSigunguNm;
	}
	public String getAddFarmBankNm() {
		return addFarmBankNm;
	}
	public void setAddFarmBankNm(String addFarmBankNm) {
		this.addFarmBankNm = addFarmBankNm;
	}
	public String getAddFarmAccountNo() {
		return addFarmAccountNo;
	}
	public void setAddFarmAccountNo(String addFarmAccountNo) {
		this.addFarmAccountNo = addFarmAccountNo;
	}
	public MultipartFile getAddFarmRnFile() {
		return addFarmRnFile;
	}
	public void setAddFarmRnFile(MultipartFile addFarmRnFile) {
		this.addFarmRnFile = addFarmRnFile;
	}
	public String getAddFarmMemo() {
		return addFarmMemo;
	}
	public void setAddFarmMemo(String addFarmMemo) {
		this.addFarmMemo = addFarmMemo;
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
	public String getAddFarmRnFilePathName() {
		return addFarmRnFilePathName;
	}
	public void setAddFarmRnFilePathName(String addFarmRnFilePathName) {
		this.addFarmRnFilePathName = addFarmRnFilePathName;
	}
	public String getAddFarmSigunguCd() {
		return addFarmSigunguCd;
	}
	public void setAddFarmSigunguCd(String addFarmSigunguCd) {
		this.addFarmSigunguCd = addFarmSigunguCd;
	}
	@Override
	public String toString() {
		return "AddFarm [addFarmNo=" + addFarmNo + ", addFarmNm=" + addFarmNm + ", addFarmCeo=" + addFarmCeo
				+ ", addFarmTel=" + addFarmTel + ", addFarmHp=" + addFarmHp + ", addFarmFax=" + addFarmFax
				+ ", addFarmAdr=" + addFarmAdr + ", addFarmDtlAdr=" + addFarmDtlAdr + ", addFarmEmail=" + addFarmEmail
				+ ", addFarmRn=" + addFarmRn + ", addFarmZip=" + addFarmZip + ", insDt=" + insDt + ", insId=" + insId
				+ ", uptDt=" + uptDt + ", uptId=" + uptId + ", addFarmSidoNm=" + addFarmSidoNm + ", addFarmSigunguNm="
				+ addFarmSigunguNm + ", addFarmBankNm=" + addFarmBankNm + ", addFarmAccountNo=" + addFarmAccountNo
				+ ", addFarmRnFile=" + addFarmRnFile + ", addFarmMemo=" + addFarmMemo + ", addPayGb=" + addPayGb
				+ ", addPayDate=" + addPayDate + ", addPayManagerNm=" + addPayManagerNm + ", addPayManagerHp="
				+ addPayManagerHp + ", addPayMemo=" + addPayMemo + ", addFarmRnFilePathName=" + addFarmRnFilePathName
				+ ", addFarmSigunguCd=" + addFarmSigunguCd + "]";
	}


}
