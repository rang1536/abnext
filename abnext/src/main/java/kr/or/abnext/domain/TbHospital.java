package kr.or.abnext.domain;

import org.springframework.web.multipart.MultipartFile;

/*
 * 생성일 2022.05.20.
 * 테이블명 TB_HOSPITAL
 * 설명    병원관리 master
 * */

public class TbHospital {
	private int hospNo;
	private String hospNm;
	private String hospTel;
	private String hospHp;
	private String hospEmail;
	private String hospFax;
	private String hospAdr;
	private String hospDtlAdr;
	private String hospZip;
	private String hospCeo;
	private String hospRn;
	private String insDt;
	private String insId;
	private String uptDt;
	private String uptId;

	//추가
	private String hospSidoNm;
	private String hospSigunguNm;
	private String hospBankNm;
	private String hospAccountNo;

	private MultipartFile hospRnFile;
	private String gubun;

	//추가. 2022.06.18.
	private String hospMemo;
	private String payGb;
	private String payDate;
	private String payManagerNm;
	private String payManagerHp;
	private String payMemo;
	private String hospFirstDoctor;
	private String hospFirstDoctorNm;

	private String hospRnFilePathName;


	public String getHospRnFilePathName() {
		return hospRnFilePathName;
	}



	public void setHospRnFilePathName(String hospRnFilePathName) {
		this.hospRnFilePathName = hospRnFilePathName;
	}



	public String getHospFirstDoctorNm() {
		return hospFirstDoctorNm;
	}



	public void setHospFirstDoctorNm(String hospFirstDoctorNm) {
		this.hospFirstDoctorNm = hospFirstDoctorNm;
	}



	public String getHospFirstDoctor() {
		return hospFirstDoctor;
	}



	public void setHospFirstDoctor(String hospFirstDoctor) {
		this.hospFirstDoctor = hospFirstDoctor;
	}



	public String getHospMemo() {
		return hospMemo;
	}



	public void setHospMemo(String hospMemo) {
		this.hospMemo = hospMemo;
	}



	public String getPayGb() {
		return payGb;
	}



	public void setPayGb(String payGb) {
		this.payGb = payGb;
	}



	public String getPayDate() {
		return payDate;
	}



	public void setPayDate(String payDate) {
		this.payDate = payDate;
	}



	public String getPayManagerNm() {
		return payManagerNm;
	}



	public void setPayManagerNm(String payManagerNm) {
		this.payManagerNm = payManagerNm;
	}



	public String getPayManagerHp() {
		return payManagerHp;
	}



	public void setPayManagerHp(String payManagerHp) {
		this.payManagerHp = payManagerHp;
	}



	public String getPayMemo() {
		return payMemo;
	}



	public void setPayMemo(String payMemo) {
		this.payMemo = payMemo;
	}



	public String getGubun() {
		return gubun;
	}



	public void setGubun(String gubun) {
		this.gubun = gubun;
	}



	public MultipartFile getHospRnFile() {
		return hospRnFile;
	}



	public void setHospRnFile(MultipartFile hospRnFile) {
		this.hospRnFile = hospRnFile;
	}



	public int getHospNo() {
		return hospNo;
	}



	public void setHospNo(int hospNo) {
		this.hospNo = hospNo;
	}



	public String getHospNm() {
		return hospNm;
	}



	public void setHospNm(String hospNm) {
		this.hospNm = hospNm;
	}



	public String getHospTel() {
		return hospTel;
	}



	public void setHospTel(String hospTel) {
		this.hospTel = hospTel;
	}



	public String getHospHp() {
		return hospHp;
	}



	public void setHospHp(String hospHp) {
		this.hospHp = hospHp;
	}



	public String getHospEmail() {
		return hospEmail;
	}



	public void setHospEmail(String hospEmail) {
		this.hospEmail = hospEmail;
	}



	public String getHospFax() {
		return hospFax;
	}



	public void setHospFax(String hospFax) {
		this.hospFax = hospFax;
	}



	public String getHospAdr() {
		return hospAdr;
	}



	public void setHospAdr(String hospAdr) {
		this.hospAdr = hospAdr;
	}



	public String getHospDtlAdr() {
		return hospDtlAdr;
	}



	public void setHospDtlAdr(String hospDtlAdr) {
		this.hospDtlAdr = hospDtlAdr;
	}



	public String getHospZip() {
		return hospZip;
	}



	public void setHospZip(String hospZip) {
		this.hospZip = hospZip;
	}



	public String getHospCeo() {
		return hospCeo;
	}



	public void setHospCeo(String hospCeo) {
		this.hospCeo = hospCeo;
	}



	public String getHospRn() {
		return hospRn;
	}



	public void setHospRn(String hospRn) {
		this.hospRn = hospRn;
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



	public String getHospSidoNm() {
		return hospSidoNm;
	}



	public void setHospSidoNm(String hospSidoNm) {
		this.hospSidoNm = hospSidoNm;
	}



	public String getHospSigunguNm() {
		return hospSigunguNm;
	}



	public void setHospSigunguNm(String hospSigunguNm) {
		this.hospSigunguNm = hospSigunguNm;
	}



	public String getHospBankNm() {
		return hospBankNm;
	}



	public void setHospBankNm(String hospBankNm) {
		this.hospBankNm = hospBankNm;
	}



	public String getHospAccountNo() {
		return hospAccountNo;
	}



	public void setHospAccountNo(String hospAccountNo) {
		this.hospAccountNo = hospAccountNo;
	}



	@Override
	public String toString() {
		return "TbHospital [hospNo=" + hospNo + ", hospNm=" + hospNm + ", hospTel=" + hospTel + ", hospHp=" + hospHp
				+ ", hospEmail=" + hospEmail + ", hospFax=" + hospFax + ", hospAdr=" + hospAdr + ", hospDtlAdr="
				+ hospDtlAdr + ", hospZip=" + hospZip + ", hospCeo=" + hospCeo + ", hospRn=" + hospRn + ", insDt="
				+ insDt + ", insId=" + insId + ", uptDt=" + uptDt + ", uptId=" + uptId + ", hospSidoNm=" + hospSidoNm
				+ ", hospSigunguNm=" + hospSigunguNm + ", hospBankNm=" + hospBankNm + ", hospAccountNo=" + hospAccountNo
				+ ", hospRnFile=" + hospRnFile + ", gubun=" + gubun + ", hospMemo=" + hospMemo + ", payGb=" + payGb
				+ ", payDate=" + payDate + ", payManagerNm=" + payManagerNm + ", payManagerHp=" + payManagerHp
				+ ", payMemo=" + payMemo + ", hospFirstDoctor=" + hospFirstDoctor + ", hospFirstDoctorNm="
				+ hospFirstDoctorNm + ", hospRnFilePathName=" + hospRnFilePathName + "]";
	}






}
