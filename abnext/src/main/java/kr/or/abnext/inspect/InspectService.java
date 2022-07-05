package kr.or.abnext.inspect;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.or.abnext.admin.AdminDao;
import kr.or.abnext.domain.TbAnimal;
import kr.or.abnext.domain.TbCode;
import kr.or.abnext.domain.TbFile;
import kr.or.abnext.domain.TbHospital;
import kr.or.abnext.domain.TbInspection;
import kr.or.abnext.domain.TbRcept;
import kr.or.abnext.domain.TbSample;
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

	public TbUser getUser(TbUser user) {
		return inspectDao.getUser(user);
	}

	public int duplAnimChk(TbAnimal anim) {
		return inspectDao.duplAnimChk(anim);
	}

	public TbRcept getRcept(TbRcept rcept) {
		return inspectDao.getRcept(rcept);
	}

	public TbAnimal getAnimal(TbAnimal anim) {
		return inspectDao.getAnimal(anim);
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

	public int insertRcept(TbRcept rcept) {
		return inspectDao.insertRcept(rcept);
	}

	public int insertInspection(TbInspection insp) {
		return inspectDao.insertInspection(insp);
	}

	public int insertSample(TbSample smpl) {
		return inspectDao.insertSample(smpl);
	}

	public int insertAnimal(TbAnimal anim) {
		return inspectDao.insertAnimal(anim);
	}

	public List<TbUser> selectDoctorList(TbUser bean){
		return inspectDao.selectDoctorList(bean);
	}

	public List<TbUser> selectDoctorListByHosp(TbHospital bean){
		return inspectDao.selectDoctorListByHosp(bean);
	}

	public List<TbHospital> selectHospitalList(TbHospital bean){
		return inspectDao.selectHospitalList(bean);
	}

	public List<TbInspection> selectInspList(TbInspection tbInspection){
		List<TbInspection> list = inspectDao.selectInspList(tbInspection);

		if(list.size() > 0) {
			for(int i=0; i<list.size(); i++) {
				list.get(i).setInspFileList(inspectDao.selectInspFileList(list.get(i)));
			}
		}
		return list;
	}

	public int removeFile(TbFile tbFile) {
		return adminDao.removeFile(tbFile);
	}

	public List<TbSample> selectSampleList(TbSample tbSample){
		return inspectDao.selectSampleList(tbSample);
	}

	public int updateInspectStatus(TbRcept rcpt) {
		return inspectDao.updateInspectStatus(rcpt);
	}

	public int updateSampleStatus(TbSample smpl) {
		return inspectDao.updateSampleStatus(smpl);
	}

	public int updateInspect(TbInspection insp) {
		return inspectDao.updateInspect(insp);
	}

	//inspFileUploadServ
	public Map<String, Object> inspFileUploadServ(TbRcept tbRcept, String inspNo, List<MultipartFile> files){
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
}
