package kr.or.abnext.payment;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import kr.or.abnext.admin.AdminService;
import kr.or.abnext.domain.TbAnimal;
import kr.or.abnext.domain.TbCode;
import kr.or.abnext.domain.TbFile;
import kr.or.abnext.domain.TbInspection;
import kr.or.abnext.domain.TbRcept;
import kr.or.abnext.domain.TbSample;
import kr.or.abnext.domain.TbUser;
import kr.or.abnext.util.UtilFile;

@RestController
public class PaymentRestController {

	@Autowired
	PaymentService inspectServ;

	@Autowired
	AdminService adminServ;

	private static final Logger logger = LoggerFactory.getLogger(PaymentRestController.class);

	/*@RequestMapping(value = "insertInspect")
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


	 * 코드조회
	 *
	@RequestMapping(value = "selectDoctorList", method = RequestMethod.POST)
	public List<TbUser> selectDoctorList(TbUser tbUser) {
		System.out.println("의사조회 시작~!!");
		List<TbUser> list = inspectServ.selectDoctorList(tbUser);
		return list;
	}


	 * 동물코드생성
	 *
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
			if(tbRcept.getInspList().get(i).get("inspNo") != null && !tbRcept.getInspList().get(i).get("inspNo").equals("")) {
				bean.setInspNo(tbRcept.getInspList().get(i).get("inspNo").toString());
			}
			bean.setWorkerNo(tbRcept.getInspList().get(i).get("workerNo").toString());
			bean.setWorkerNm(tbRcept.getInspList().get(i).get("workerNm").toString());
			bean.setSampleCode(tbRcept.getInspList().get(i).get("sampleCode").toString());
			bean.setSampleName(tbRcept.getInspList().get(i).get("sampleName").toString());
			bean.setInspType(tbRcept.getInspList().get(i).get("inspType").toString());
			bean.setInspFirstCd(tbRcept.getInspList().get(i).get("inspFirstCd").toString());
			bean.setUptId(tbRcept.getUptId());
			//시료 테이블 수정
			if(tbRcept.getInspList().get(i).get("inspNo") != null && !tbRcept.getInspList().get(i).get("inspNo").equals("")) {
				inspectServ.updateInspect(bean);
			}else {
				bean.setRqstNo(""+tbRcept.getRqstNo());
				bean.setInsId(tbRcept.getUptId());
				inspectServ.insertInspection(bean);
			}
		}

		TbRcept rcpt = new TbRcept();
		rcpt.setRqstNo(tbRcept.getRqstNo());
		rcpt.setUptId(tbRcept.getUptId());
		rcpt.setProcStat("3");
		rcpt.setProcStatNm("진단설정");

		inspectServ.updateInspectStatus(rcpt);
		Map<String, Object> map = new HashMap<String,Object>();
		map.put("result", "ok");

		return map;
	}

	@RequestMapping(value = "modifyResult", method = RequestMethod.POST)
	public Map<String, Object> modifyResult(TbRcept tbRcept) {

		for(int i=0; i<tbRcept.getInspList().size(); i++) {
			System.out.println("fileLsit : "+tbRcept.getInspList().get(i).get("fileList"));
		}

		for(int i=0; i<tbRcept.getInspList().size(); i++) {

			TbInspection bean = new TbInspection();
			bean.setInspNo(tbRcept.getInspList().get(i).get("inspNo").toString());
			bean.setInspResult(tbRcept.getInspList().get(i).get("inspResult").toString());
			bean.setUptId(tbRcept.getUptId());
			//시료 테이블 수정
			inspectServ.updateInspect(bean);
		}

		TbRcept rcpt = new TbRcept();
		rcpt.setRqstNo(tbRcept.getRqstNo());
		rcpt.setUptId(tbRcept.getUptId());
		rcpt.setProcStat("4");
		rcpt.setProcStatNm("결과입력");
		rcpt.setResult(tbRcept.getResult());

		inspectServ.updateInspectStatus(rcpt);
		Map<String, Object> map = new HashMap<String,Object>();
		map.put("result", "ok");

		return map;
	}

	//결과사진업로드
	@RequestMapping(value = "inspFileUpload", method = RequestMethod.POST)
	public Map<String, Object> inspFileUpload(TbRcept tbRcept, String inspNo
			, @RequestParam("fileList") List<MultipartFile> files) {
		System.out.println("inspNo : "+inspNo);

		Map<String, Object> map = new HashMap<String,Object>();
		if(files.size() > 0) {
			System.out.println("파일넘어옴");
			map = inspectServ.inspFileUploadServ(tbRcept, inspNo, files);
		}

		return map;
	}

	//removeFileByFileNo
	@RequestMapping(value = "removeFileByFileNo", method = RequestMethod.POST)
	public Map<String, Object> removeFileByFileNo(TbFile tbFile) {
		Map<String, Object> map = new HashMap<String,Object>();

		int result = inspectServ.removeFile(tbFile);
		if(result > 0) {
			map.put("result", "succ");
		}else {
			map.put("result", "fail");
		}
		return map;
	}

	@RequestMapping(value = "modifyFinal", method = RequestMethod.POST)
	public Map<String, Object> modifyFinal(TbRcept tbRcept) {
		tbRcept.setProcStat("5");
		tbRcept.setProcStatNm("최종판정");

		inspectServ.updateInspectStatus(tbRcept);
		Map<String, Object> map = new HashMap<String,Object>();
		map.put("result", "ok");

		return map;
	}*/
}
