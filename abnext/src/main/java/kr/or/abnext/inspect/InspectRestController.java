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

import kr.or.abnext.domain.TbInspection;
import kr.or.abnext.domain.TbRcept;
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
			ti.setSampleCode(tbRcept.getInspList().get(i).get("sampleCode").toString());
			ti.setSampleType(tbRcept.getInspList().get(i).get("sampleType").toString());
			ti.setSampleMemo(tbRcept.getInspList().get(i).get("sampleMemo").toString());
			ti.setInspFirstCd(tbRcept.getInspList().get(i).get("inspFirstCd").toString());
			ti.setInspSecondCd(tbRcept.getInspList().get(i).get("inspSecondCd").toString());
			ti.setInspThirdCd(tbRcept.getInspList().get(i).get("inspThirdCd").toString());
			ti.setInspPrice(tbRcept.getInspList().get(i).get("inspPrice").toString());
			//검사 테이블 등록
			inspectServ.insertInspection(ti);
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

}
