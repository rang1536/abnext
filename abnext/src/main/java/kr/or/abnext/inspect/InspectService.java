package kr.or.abnext.inspect;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.or.abnext.admin.AdminDao;
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
import kr.or.abnext.util.UtilFile;

@Service
public class InspectService {
	@Autowired
	private InspectDao inspectDao;

	@Autowired
	private AdminDao adminDao;

	public List<TbRcept> recptList(String[] arr){
		return inspectDao.rceptList(arr);
	}

	public List<TbRcept> customerInspectList(TbRcept bean){
		return inspectDao.customerInspectList(bean);
	}

	public TbUser getUser(TbUser bean) {
		return inspectDao.getUser(bean);
	}

	public int duplAnimChk(TbAnimal bean) {
		return inspectDao.duplAnimChk(bean);
	}

	public TbRcept getRcept(TbRcept bean) {
		return inspectDao.getRcept(bean);
	}

	public TbAnimal getAnimal(TbAnimal bean) {
		return inspectDao.getAnimal(bean);
	}

	public TbHospital getHospital(int hospNo) {
		return inspectDao.getHospital(hospNo);
	}

	public TbAnimal getAnimal(int animNo) {
		return inspectDao.getAnimal(animNo);
	}

	public String getNextKey() {
		return inspectDao.getNextKey();
	}

	public int insertRcept(TbRcept bean) {
		return inspectDao.insertRcept(bean);
	}

	public int insertInspection(TbInspection bean) {
		return inspectDao.insertInspection(bean);
	}

	public int insertSample(TbSample bean) {
		return inspectDao.insertSample(bean);
	}

	public int insertMediHist(TbMediHistory bean) {
		return inspectDao.insertMediHist(bean);
	}

	public int insertAnimal(TbAnimal bean) {
		return inspectDao.insertAnimal(bean);
	}

	public List<TbUser> selectDoctorList(TbUser bean){
		return inspectDao.selectDoctorList(bean);
	}

	public List<TbUser> selectDoctorListByHosp(TbHospital bean){
		return inspectDao.selectDoctorListByHosp(bean);
	}

	public List<TbCode> selectSpeciesList(){
		return inspectDao.selectSpeciesList();
	}

	public List<TbCode> selectMediHistList(){
		return inspectDao.selectMediHistList();
	}

	public List<TbCode> selectInspTypeList(){
		return inspectDao.selectInspTypeList();
	}

	public List<TbHospital> selectHospitalList(TbHospital bean){
		return inspectDao.selectHospitalList(bean);
	}

	public List<TbInspection> selectInspList(TbInspection bean){
		List<TbInspection> list = inspectDao.selectInspList(bean);

		if(list.size() > 0) {
			for(int i=0; i<list.size(); i++) {
				list.get(i).setInspFileList(inspectDao.selectInspFileList(list.get(i)));
			}
		}
		return list;
	}

	public int removeFile(TbFile bean) {
		return adminDao.removeFile(bean);
	}

	public List<TbSample> selectSampleList(TbSample bean){
		return inspectDao.selectSampleList(bean);
	}

	public List<TbMediHistory> selectMediHistList(TbMediHistory bean){
		return inspectDao.selectMediHistList(bean);
	}

	public List<TbFile> getFileList(TbFile bean){
		return inspectDao.getFileList(bean);
	}

	public int updateInspectStatus(TbRcept bean) {
		return inspectDao.updateInspectStatus(bean);
	}

	public int updateSampleStatus(TbSample bean) {
		return inspectDao.updateSampleStatus(bean);
	}

	public int updateInspect(TbInspection bean) {
		return inspectDao.updateInspect(bean);
	}

	public int insertOpinion(TbInspOpinion bean) {
		return inspectDao.insertOpinion(bean);
	}

	public int updateResult(TbRcept bean) {
		return inspectDao.updateResult(bean);
	}

	//inspFileUploadServ
	public Map<String, Object> inspFileUploadServ(TbRcept tbRcept, String inspNo, List<MultipartFile> files
			, List<String> titles, List<String> contents, List<String> closeYns){

		UtilFile utilFile = new UtilFile();
		List<TbFile> tbFileList = utilFile.multiUploadFile(files);
		int result = 0;
		Map<String, Object> map = new HashMap<String, Object>();

		if(tbFileList.size() > 0) {
			TbFile tbFile = new TbFile();
			tbFile.setFileGb("F001-05");
			tbFile.setRqstNo(tbRcept.getRqstNo());
			tbFile.setInspNo(Integer.parseInt(inspNo));

			for(int i=0; i<tbFileList.size(); i++) {
				tbFileList.get(i).setRqstNo(tbRcept.getRqstNo());
				tbFileList.get(i).setInspNo(Integer.parseInt(inspNo));
				tbFileList.get(i).setFileGb("F001-05");
				tbFileList.get(i).setTitle(titles.get(i));
				tbFileList.get(i).setContent(contents.get(i));
				tbFileList.get(i).setCloseYn(closeYns.get(i));
				result += adminDao.addFile(tbFileList.get(i));
			}

			if(tbFileList.size() == result) {
				map.put("result", "succ");
			}else {
				map.put("result", "fail");
			}

		}

		return map;
	}

	//inspFileUploadServ
	public Map<String, Object> inspFileUploadServ2(TbRcept tbRcept, String inspNo, List<MultipartFile> files){

		UtilFile utilFile = new UtilFile();
		List<TbFile> tbFileList = utilFile.multiUploadFile(files);
		int result = 0;
		Map<String, Object> map = new HashMap<String, Object>();

		if(tbFileList.size() > 0) {
			TbFile tbFile = new TbFile();
			tbFile.setFileGb("F001-07");
			tbFile.setRqstNo(tbRcept.getRqstNo());
			tbFile.setInspNo(Integer.parseInt(inspNo));

			for(int i=0; i<tbFileList.size(); i++) {
				tbFileList.get(i).setRqstNo(tbRcept.getRqstNo());
				tbFileList.get(i).setInspNo(Integer.parseInt(inspNo));
				tbFileList.get(i).setFileGb("F001-07");
				result += adminDao.addFile(tbFileList.get(i));
			}

			if(tbFileList.size() == result) {
				map.put("result", "succ");
			}else {
				map.put("result", "fail");
			}

		}

		return map;
	}

	public TbInspection getInspResult(TbInspection bean){
		return inspectDao.getInspResult(bean);
	}

	public String getPdlNo(String pdlNo) {
		return inspectDao.getPdlNo(pdlNo);
	}

	public int insertAntibiotic(TbAntibiotic bean) {
		return inspectDao.insertAntibiotic(bean);
	}

	public List<TbAntibiotic> getAntiList(TbAntibiotic bean){
		return inspectDao.getAntiList(bean);
	}

	public int insertSerum(TbSerum bean) {
		return inspectDao.insertSerum(bean);
	}

	public List<TbSerum> getSerumList(TbSerum bean){
		return inspectDao.getSerumList(bean);
	}

	public List<TbSerum> getSerumChart(TbSerum bean){
		return inspectDao.getSerumChart(bean);
	}

	public int insertPcr(TbPcr bean) {
		return inspectDao.insertPcr(bean);
	}

	public List<TbPcr> getPcrList(TbPcr bean){
		return inspectDao.getPcrList(bean);
	}

	public int insertBloodChem(TbBloodChem bean) {
		return inspectDao.insertBloodChem(bean);
	}

	public List<TbBloodChem> getBcList(TbBloodChem bean){
		return inspectDao.getBcList(bean);
	}

	public int insertCbc(TbBloodChem bean) {
		return inspectDao.insertCbc(bean);
	}

	public List<TbBloodChem> getCbcList(TbBloodChem bean){
		return inspectDao.getCbcList(bean);
	}
}
