package kr.or.abnext.inspect;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.or.abnext.domain.TbAnimal;
import kr.or.abnext.domain.TbInspection;
import kr.or.abnext.domain.TbRcept;
import kr.or.abnext.domain.TbSample;
import kr.or.abnext.domain.TbUser;

@RestController
public class InspectRestController {

	@Autowired
	InspectService inspectServ;

	private static final Logger logger = LoggerFactory.getLogger(InspectRestController.class);

	@RequestMapping(value = "insertInspect")
	public Map<String, Object> registerInspect(TbRcept tbRcept) {
		logger.info(tbRcept.toString());

		//접수 테이블 pk 미리 가져온다
		String rqstNo = inspectServ.getNextKey();

		//접수 테이블  pk 세팅
		tbRcept.setRqstNo(Integer.parseInt(rqstNo));

		//접수 테이블 등록
		int k = inspectServ.insertRcept(tbRcept);
		int l = tbRcept.getInspList().size();

		for(int i=0; i<tbRcept.getInspList().size(); i++) {
			TbInspection ti = new TbInspection();
			ti.setRqstNo(rqstNo);
			ti.setInspFirstCd(tbRcept.getInspList().get(i).get("inspFirstCd").toString());
			ti.setInspSecondCd(tbRcept.getInspList().get(i).get("inspSecondCd").toString());
			ti.setInspThirdCd(tbRcept.getInspList().get(i).get("inspThirdCd").toString());
			ti.setInspPrice(tbRcept.getInspList().get(i).get("inspPrice").toString());
			ti.setInsId(tbRcept.getInsId());
			//검사 테이블 등록
			inspectServ.insertInspection(ti);
		}

		for(int i=0; i<tbRcept.getSmplList().size(); i++) {
			TbSample ts = new TbSample();
			ts.setRqstNo(rqstNo);
			ts.setSampleCode(tbRcept.getSmplList().get(i).get("sampleCode").toString());
			ts.setSampleMemo(tbRcept.getSmplList().get(i).get("sampleMemo").toString());
			ts.setInsId(tbRcept.getInsId());
			//시료 테이블 등록
			inspectServ.insertSample(ts);
		}

		Map<String, Object> map = new HashMap<String, Object>();
		if(k > 0 && l > 0) {
			map.put("result", "success");
		}else {
			map.put("result", "fail");
		}
		return map;
	}

	/*
	 * 코드조회
	 **/
	@RequestMapping(value = "selectDoctorList", method = RequestMethod.POST)
	public List<TbUser> selectDoctorList(TbUser tbUser) {
		System.out.println("의사조회 시작~!!");
		List<TbUser> list = inspectServ.selectDoctorList(tbUser);
		return list;
	}

	/*
	 * 동물코드생성
	 **/
	@RequestMapping(value = "createAnimal", method = RequestMethod.POST)
	public Map<String, Object> createAnimal(TbRcept tbRcept) {
		logger.info(tbRcept.toString());
		TbAnimal tbAnimal = new TbAnimal();
		return null;
	}

}
