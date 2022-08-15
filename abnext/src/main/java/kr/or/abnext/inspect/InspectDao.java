package kr.or.abnext.inspect;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.abnext.domain.TbAnimal;
import kr.or.abnext.domain.TbAntibiotic;
import kr.or.abnext.domain.TbBloodChem;
import kr.or.abnext.domain.TbCode;
import kr.or.abnext.domain.TbFile;
import kr.or.abnext.domain.TbHospital;
import kr.or.abnext.domain.TbInspOpinion;
import kr.or.abnext.domain.TbInspection;
import kr.or.abnext.domain.TbMediHistory;
import kr.or.abnext.domain.TbPcr;
import kr.or.abnext.domain.TbRcept;
import kr.or.abnext.domain.TbSample;
import kr.or.abnext.domain.TbSerum;
import kr.or.abnext.domain.TbUser;

@Repository
public class InspectDao {
	@Autowired
	private SqlSessionTemplate sql;

	public List<TbRcept> rceptList(String[] arr){
		return sql.selectList("inspection.selectRceptList", arr);
	}

	public List<TbRcept> customerInspectList(TbRcept bean){
		return sql.selectList("inspection.customerInspectList", bean);
	}

	public TbRcept getRcept(TbRcept bean) {
		return sql.selectOne("inspection.getTbRcept", bean);
	}

	public TbAnimal getAnimal(TbAnimal bean) {
		return sql.selectOne("inspection.getAnimal", bean);
	}

	public TbUser getUser(TbUser bean) {
		return sql.selectOne("inspection.getUser", bean);
	}

	public int duplAnimChk(TbAnimal bean) {
		return sql.selectOne("inspection.duplAnimChk", bean);
	}

	public TbHospital getHospital(int hospNo) {
		return sql.selectOne("inspection.getTbHospital", hospNo);
	}

	public TbAnimal getAnimal(int animNo) {
		return sql.selectOne("inspection.getAnimal", animNo);
	}

	public String getNextKey() {
		return sql.selectOne("inspection.getNextKey");
	}

	public String getPdlNo(String pdlNo) {
		return sql.selectOne("inspection.getPdlNo", pdlNo);
	}

	public String getAnimCode(TbAnimal bean) {
		return sql.selectOne("inspection.getAnimCode", bean);
	}

	public int insertRcept(TbRcept bean) {
		return sql.insert("inspection.insertRcept", bean);
	}

	public int insertInspection(TbInspection bean) {
		return sql.insert("inspection.insertInspection", bean);
	}

	public int insertSample(TbSample bean) {
		return sql.insert("inspection.insertSample", bean);
	}

	public int insertMediHist(TbMediHistory bean) {
		return sql.insert("inspection.insertMediHist", bean);
	}

	public int insertAnimal(TbAnimal bean) {
		return sql.insert("inspection.insertAnimal", bean);
	}

	public List<TbUser> selectDoctorList(TbUser bean){
		return sql.selectList("inspection.selectDoctorList", bean);
	}

	public List<TbUser> selectDoctorListByHosp(TbHospital bean){
		return sql.selectList("inspection.selectDoctorListByHosp", bean);
	}

	public List<TbCode> selectSpeciesList(){
		return sql.selectList("inspection.selectSpeciesList");
	}

	public List<TbCode> selectMediHistList(){
		return sql.selectList("inspection.selectMediHistList");
	}

	public List<TbCode> selectInspTypeList(){
		return sql.selectList("inspection.selectInspTypeList");
	}

	public List<TbHospital> selectHospitalList(TbHospital bean){
		return sql.selectList("inspection.selectHospitalList", bean);
	}

	public List<TbInspection> selectInspList(TbInspection bean){
		return sql.selectList("inspection.selectInspList", bean);
	}

	public TbInspection getInspResult(TbInspection bean){
		return sql.selectOne("inspection.getInspResult", bean);
	}

	public List<TbSample> selectSampleList(TbSample bean){
		return sql.selectList("inspection.selectSampleList", bean);
	}

	public List<TbMediHistory> selectMediHistList(TbMediHistory bean){
		return sql.selectList("inspection.mediHistList", bean);
	}

	public List<TbFile> getFileList(TbFile bean){
		return sql.selectList("inspection.getFileList", bean);
	}

	public int updateInspectStatus(TbRcept bean) {
		return sql.insert("inspection.updateInspectStatus", bean);
	}

	public int insertOpinion(TbInspOpinion bean) {
		return sql.insert("inspection.insertOpinion", bean);
	}

	public int updateResult(TbRcept bean) {
		return sql.insert("inspection.updateResult", bean);
	}

	public int updateSampleStatus(TbSample bean) {
		return sql.insert("inspection.updateSampleStatus", bean);
	}

	public int updateInspect(TbInspection bean) {
		return sql.insert("inspection.updateInspect", bean);
	}

	public List<TbFile> selectInspFileList(TbInspection bean) {
		return sql.selectList("inspection.selectInspFileList", bean);
	}

	public int insertAntibiotic(TbAntibiotic bean) {
		return sql.insert("inspection.insertAntibiotic", bean);
	}

	public List<TbAntibiotic> getAntiList(TbAntibiotic bean){
		return sql.selectList("inspection.getAntiList", bean);
	}

	public int insertSerum(TbSerum bean) {
		return sql.insert("inspection.insertSerum", bean);
	}

	public List<TbSerum> getSerumList(TbSerum bean){
		return sql.selectList("inspection.getSerumList", bean);
	}

	public List<TbSerum> getSerumChart(TbSerum bean){
		return sql.selectList("inspection.getSerumChart", bean);
	}

	public int insertPcr(TbPcr bean) {
		return sql.insert("inspection.insertPcr", bean);
	}

	public List<TbPcr> getPcrList(TbPcr bean){
		return sql.selectList("inspection.getPcrList", bean);
	}

	public int insertBloodChem(TbBloodChem bean) {
		return sql.insert("inspection.insertBloodChem", bean);
	}

	public List<TbBloodChem> getBcList(TbBloodChem bean){
		return sql.selectList("inspection.getBcList", bean);
	}

	public int insertCbc(TbBloodChem bean) {
		return sql.insert("inspection.insertCbc", bean);
	}

	public List<TbBloodChem> getCbcList(TbBloodChem bean){
		return sql.selectList("inspection.getCbcList", bean);
	}
}
