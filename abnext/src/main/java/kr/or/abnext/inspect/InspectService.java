package kr.or.abnext.inspect;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.abnext.domain.TbAnimal;
import kr.or.abnext.domain.TbCode;
import kr.or.abnext.domain.TbHospital;
import kr.or.abnext.domain.TbInspection;
import kr.or.abnext.domain.TbRcept;
import kr.or.abnext.domain.TbSample;
import kr.or.abnext.domain.TbUser;

@Service
public class InspectService {
	@Autowired
	private InspectDao inspectDao;

	public List<TbRcept> recptList(){
		return inspectDao.rceptList();
	}

	public TbRcept getRcept(TbRcept rcept) {
		return inspectDao.getRcept(rcept);
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

	public List<TbUser> selectDoctorList(TbUser tbUser){
		return inspectDao.selectDoctorList(tbUser);
	}

	public List<TbInspection> selectInspList(TbInspection tbInspection){
		return inspectDao.selectInspList(tbInspection);
	}

	public List<TbSample> selectSampleList(TbSample tbSample){
		return inspectDao.selectSampleList(tbSample);
	}
}
