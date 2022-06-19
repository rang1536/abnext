package kr.or.abnext.inspect;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import kr.or.abnext.admin.AdminService;
import kr.or.abnext.domain.TbAnimal;
import kr.or.abnext.domain.TbCode;
import kr.or.abnext.domain.TbInspection;
import kr.or.abnext.domain.TbRcept;
import kr.or.abnext.domain.TbSample;
import kr.or.abnext.domain.TbUser;

@RestController
public class InspectRestController {

	@Autowired
	InspectService inspectServ;

	@Autowired
	AdminService adminServ;

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

		//동물 정보
		TbAnimal tbAnimal = new TbAnimal();
		tbAnimal.setAnimNm(tbRcept.getAnimNm());
		tbAnimal.setAnimBirth(tbRcept.getAnimBirth());
		tbAnimal.setSigunguCd(tbRcept.getButlerSigunguCd());
		tbAnimal.setUserNm(tbRcept.getAnimButler());

		//등록된 동물인지 확인 후 미등록이면 인서트
		int cnt = inspectServ.duplAnimChk(tbAnimal);
		logger.info("cnt:"+cnt);
		String animNo = "";
		if(cnt == 0) {
			animNo = "XYZ"+tbRcept.getAnimBirth()+tbRcept.getButlerSigunguCd()+"001";
			tbAnimal.setAnimNo(animNo);
			tbAnimal.setAnimFirstCd(tbRcept.getAnimFirstCd());
			tbAnimal.setAnimSecondCd(tbRcept.getAnimSecondCd());
			tbAnimal.setAnimThirdCd(tbRcept.getAnimThirdCd());
			tbAnimal.setAnimSex(tbRcept.getAnimSex());
			tbAnimal.setInsId(tbRcept.getInsId());
			inspectServ.insertAnimal(tbAnimal);
		}else {
			TbAnimal anim = inspectServ.getAnimal(tbAnimal);
			animNo = anim.getAnimNo();
		}

		//신청을 접수로 변경
		TbRcept rcpt = new TbRcept();
		rcpt.setRqstNo(tbRcept.getRqstNo());
		rcpt.setAnimNo(animNo);
		rcpt.setUptId(tbRcept.getInsId());
		rcpt.setProcStat("2");
		rcpt.setProcStatNm("접수");

		inspectServ.updateInspectStatus(rcpt);

		Map<String, Object> map = new HashMap<String,Object>();
		map.put("result", "ok");

		return map;
	}

	@RequestMapping(value = "modifySetting", method = RequestMethod.POST)
	public Map<String, Object> modifySetting(TbRcept tbRcept) {

		for(int i=0; i<tbRcept.getSmplList().size(); i++) {
			TbSample bean = new TbSample();
			bean.setSampleNo(tbRcept.getSmplList().get(i).get("sampleNo").toString());
			bean.setSampleStatus(tbRcept.getSmplList().get(i).get("sampleStatus").toString());
			bean.setUptId(tbRcept.getUptId());
			//시료 테이블 수정
			inspectServ.updateSampleStatus(bean);
		}

		for(int i=0; i<tbRcept.getInspList().size(); i++) {
			TbInspection bean = new TbInspection();
			bean.setInspNo(tbRcept.getInspList().get(i).get("inspNo").toString());
			bean.setWorkerNo(tbRcept.getInspList().get(i).get("workerNo").toString());
			bean.setWorkerNm(tbRcept.getInspList().get(i).get("workerNm").toString());
			bean.setSampleCode(tbRcept.getInspList().get(i).get("sampleCode").toString());
			String smplCode = tbRcept.getInspList().get(i).get("sampleCode").toString();
			String [] smplArr = smplCode.split(",");
			String codeNm = "";
			for(int k=0; k<smplArr.length; k++) {
				TbCode code = new TbCode();
				code.setCodeId(smplArr[i]);
				TbCode newCode = adminServ.getCode(code);
				if(k == 0) {
					codeNm = newCode.getCodeNm();
				}else {
					codeNm += ","+newCode.getCodeNm();
				}
			}
			bean.setSampleName(codeNm);
			bean.setUptId(tbRcept.getUptId());
			logger.info(bean.toString());
			//시료 테이블 수정
			inspectServ.updateInspect(bean);
		}

		Map<String, Object> map = new HashMap<String,Object>();
		map.put("result", "ok");

		return map;
	}
}
