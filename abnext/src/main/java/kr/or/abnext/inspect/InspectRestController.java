package kr.or.abnext.inspect;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import kr.or.abnext.admin.AdminService;
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
import kr.or.abnext.domain.TbResult;
import kr.or.abnext.domain.TbSample;
import kr.or.abnext.domain.TbSerum;
import kr.or.abnext.domain.TbUser;
import kr.or.abnext.util.UtilFile;

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

		//접수번호 생성
		SimpleDateFormat sdf = new SimpleDateFormat("yy", new Locale("ko", "KR"));
		String yy = sdf.format(new Date());
		String pdlNo = "PDL"+yy;

		String strContext = inspectServ.getPdlNo(pdlNo);
		String strLpad = "";
		if(strContext == null) {
			strLpad = "0001";
		}else {
			strLpad = setLPad(strContext, 4, "0");
		}

		pdlNo = pdlNo + strLpad;
		tbRcept.setPdlNo(pdlNo);

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

		for(int i=0; i<tbRcept.getHistList().size(); i++) {
			TbMediHistory mh = new TbMediHistory();
			mh.setRqstNo(rqstNo);
			mh.setHistCode(tbRcept.getHistList().get(i).get("histCode").toString());
			mh.setHistMemo(tbRcept.getHistList().get(i).get("histMemo").toString());
			mh.setInsId(tbRcept.getInsId());
			//시료 테이블 등록
			inspectServ.insertMediHist(mh);
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
	 * 코드조회
	 **/
	@RequestMapping(value = "selectDoctorListByHosp", method = RequestMethod.POST)
	public List<TbUser> selectDoctorListByHosp(TbHospital srchBean) {
		System.out.println("의사조회 시작~!!!!!!!!!!!!!!");
		logger.info(srchBean.toString());
		List<TbUser> list = inspectServ.selectDoctorListByHosp(srchBean);
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
		//윤재호 nullpointException...
		/*
		if(tbRcept.getSmplList().size() > 0) {
			for(int i=0; i<tbRcept.getSmplList().size(); i++) {
				TbSample bean = new TbSample();
				bean.setSampleNo(tbRcept.getSmplList().get(i).get("sampleNo").toString());
				bean.setSampleStatus(tbRcept.getSmplList().get(i).get("sampleStatus").toString());
				bean.setUptId(tbRcept.getUptId());
				//시료 테이블 수정
				inspectServ.updateSampleStatus(bean);
			}
		}
		*/
		if(tbRcept.getInspList().size() > 0) {
			for(int i=0; i<tbRcept.getInspList().size(); i++) {
				TbInspection bean = new TbInspection();
				if(tbRcept.getInspList().get(i).get("inspNo") != null && !tbRcept.getInspList().get(i).get("inspNo").equals("")) {
					bean.setInspNo(tbRcept.getInspList().get(i).get("inspNo").toString());
				}
				bean.setWorkerNo(tbRcept.getInspList().get(i).get("workerNo").toString());
				bean.setWorkerNm(tbRcept.getInspList().get(i).get("workerNm").toString());
				bean.setSampleCode(tbRcept.getInspList().get(i).get("sampleCode").toString());
				bean.setSampleName(tbRcept.getInspList().get(i).get("sampleName").toString());
				bean.setInspThirdCd(tbRcept.getInspList().get(i).get("inspThirdCd").toString());
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
	public Map<String, Object> modifyResult(TbInspOpinion tbOpin) {
		// 검사결과소견 등록
		inspectServ.insertOpinion(tbOpin);

		// 진단테이블 결과 업데이트
		TbInspection tbInsp = new TbInspection();
		tbInsp.setInspNo(tbOpin.getInspNo());
		tbInsp.setInspResult(tbOpin.getOpinComment());
		inspectServ.updateInspect(tbInsp);

		// 접수테이블 결과등록으로 변경
		TbRcept rcpt = new TbRcept();
		rcpt.setInspNo(tbOpin.getInspNo());
		rcpt.setUptId(tbOpin.getInsId());
		rcpt.setProcStat("4");
		rcpt.setProcStatNm("결과입력");
		inspectServ.updateResult(rcpt);
		Map<String, Object> map = new HashMap<String,Object>();
		map.put("result", "ok");

		return map;
	}

	//결과사진업로드
	@RequestMapping(value = "inspFileUpload", method = RequestMethod.POST)
	public Map<String, Object> inspFileUpload(TbRcept tbRcept, String inspNo
			, @RequestParam("fileList") List<MultipartFile> files
			, @RequestParam("titleList") List<String> titles
			, @RequestParam("contentList") List<String> contents
			, @RequestParam("closeYnList") List<String> closeYns) {

		Map<String, Object> map = new HashMap<String,Object>();
		if(files.size() > 0) {
			map = inspectServ.inspFileUploadServ(tbRcept, inspNo, files, titles, contents, closeYns);
		}

		return map;
	}

	//결과사진업로드
	@RequestMapping(value = "inspFileUpload2", method = RequestMethod.POST)
	public Map<String, Object> inspFileUpload2(TbRcept tbRcept, String inspNo
			, @RequestParam("fileList") List<MultipartFile> files){

		Map<String, Object> map = new HashMap<String,Object>();
		if(files.size() > 0) {
			map = inspectServ.inspFileUploadServ2(tbRcept, inspNo, files);
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
	}

	@RequestMapping(value = "sampleList", method = RequestMethod.POST)
	public List<TbSample> sampleList(TbSample bean) {
		List<TbSample> smplList = inspectServ.selectSampleList(bean);
		return smplList;
	}

	@RequestMapping(value = "histList", method = RequestMethod.POST)
	public List<TbMediHistory> histList(TbMediHistory bean) {
		List<TbMediHistory> histList = inspectServ.selectMediHistList(bean);
		return histList;
	}


	private static String setLPad(String strContext, int iLen, String strChar ) {

		String strResult = "";
		StringBuilder sbAddChar = new StringBuilder();
		for(int i=strContext.length(); i<iLen; i++) {  // iLen길이 만큼 strChar문자로 채운다.
			sbAddChar.append( strChar );
		}

		strResult = sbAddChar + strContext;  // LPAD이므로, 채울문자열 + 원래문자열로 Concate한다.
		return strResult;
	}

	@RequestMapping(value = "requestInspectList")
	public List<TbRcept> requestInspect() {
		String [] arr = {"1" , "2"};
		return inspectServ.recptList(arr);
	}

	@RequestMapping(value = "settingInspectList2")
	public List<TbRcept> settingInspectList(Locale locale, Model model) {
		String [] arr = {"2"};
		return inspectServ.recptList(arr);
	}

	@RequestMapping(value = "resultInspectList2")
	public List<TbRcept> resultInspectList2(Locale locale, Model model) {
		String[] arr = { "3", "4" };
		return inspectServ.recptList(arr);
	}

	@RequestMapping(value = "finalInspectList2")
	public List<TbRcept> finalInspectList(Locale locale, Model model) {
		String [] arr = {"4","5"};
		return inspectServ.recptList(arr);
	}

	@RequestMapping(value = "getFileList")
	public List<TbFile> getFileList(TbFile file) {
		return inspectServ.getFileList(file);
	}

	@RequestMapping(value = "getInspResult", method = RequestMethod.POST)
	public TbInspection getInspResult(TbInspection bean) {
		// 검사정보
		TbInspection insp = inspectServ.getInspResult(bean);
		return insp;
	}

	@RequestMapping(value = "insertAntibiotic")
	public Map<String, Object> insertAntibiotic(TbResult tbResult) {
		logger.info(tbResult.toString());

		int resCnt = 0;
		for(int i=0; i<tbResult.getAntiList().size(); i++) {
			TbAntibiotic anti = new TbAntibiotic();
			anti.setAntiNo(tbResult.getAntiList().get(i).get("antiNo").toString());
			anti.setInspNo(tbResult.getInspNo());
			anti.setRes1(tbResult.getAntiList().get(i).get("res1").toString());
			anti.setRes2(tbResult.getAntiList().get(i).get("res2").toString());
			anti.setAntiMemo(tbResult.getAntiList().get(i).get("antiMemo").toString());
			anti.setInsId(tbResult.getInsId());
			//검사 테이블 등록
			resCnt += inspectServ.insertAntibiotic(anti);

		}

		Map<String, Object> map = new HashMap<String, Object>();
		if(resCnt > 0) {
			map.put("result", "success");
		}else {
			map.put("result", "fail");
		}
		return map;
	}

	@RequestMapping(value = "getAntiList")
	public List<TbAntibiotic> getAntiList(TbAntibiotic anti) {
		return inspectServ.getAntiList(anti);
	}

	@RequestMapping(value = "insertSerum")
	public Map<String, Object> insertSerum(TbResult tbResult) {
		logger.info(tbResult.toString());

		int resCnt = 0;
		for(int i=0; i<tbResult.getSerumList().size(); i++) {
			TbSerum serum = new TbSerum();
			serum.setSerName(tbResult.getSerumList().get(i).get("serName").toString());
			serum.setInspNo(tbResult.getInspNo());
			serum.setSerData(tbResult.getSerumList().get(i).get("serData").toString());
			serum.setInsId(tbResult.getInsId());
			//검사 테이블 등록
			resCnt += inspectServ.insertSerum(serum);

		}

		Map<String, Object> map = new HashMap<String, Object>();
		if(resCnt > 0) {
			map.put("result", "success");
		}else {
			map.put("result", "fail");
		}
		return map;
	}

	@RequestMapping(value = "getSerumList")
	public List<TbSerum> getSerumList(TbSerum serum) {
		return inspectServ.getSerumList(serum);
	}

	@RequestMapping(value = "getSerumChart")
	public List<TbSerum> getSerumChart(TbSerum serum) {
		return inspectServ.getSerumChart(serum);
	}

	@RequestMapping(value = "insertPcr")
	public Map<String, Object> insertPcr(TbResult tbResult) {
		logger.info(tbResult.toString());

		int resCnt = 0;
		for(int i=0; i<tbResult.getPcrList().size(); i++) {
			TbPcr pcr = new TbPcr();
			pcr.setSmplName(tbResult.getPcrList().get(i).get("smplName").toString());
			pcr.setInspNo(tbResult.getInspNo());
			pcr.setCapacity(tbResult.getPcrList().get(i).get("capacity").toString());
			pcr.setResult(tbResult.getPcrList().get(i).get("result").toString());
			pcr.setRmk(tbResult.getPcrList().get(i).get("rmk").toString());

			pcr.setInsId(tbResult.getInsId());
			//검사 테이블 등록
			resCnt += inspectServ.insertPcr(pcr);

		}

		Map<String, Object> map = new HashMap<String, Object>();
		if(resCnt > 0) {
			map.put("result", "success");
		}else {
			map.put("result", "fail");
		}
		return map;
	}

	@RequestMapping(value = "getPcrList")
	public List<TbPcr> getPcrList(TbPcr serum) {
		return inspectServ.getPcrList(serum);
	}

	@RequestMapping(value = "insertBloodChem")
	public Map<String, Object> insertBloodChem(TbResult tbResult) {
		logger.info(tbResult.toString());

		int resCnt = 0;
		for(int i=0; i<tbResult.getBcList().size(); i++) {
			TbBloodChem bc = new TbBloodChem();
			bc.setInspNo(tbResult.getInspNo());
			bc.setItemName(tbResult.getBcList().get(i).get("itemName").toString());
			bc.setVal(tbResult.getBcList().get(i).get("val").toString());
			bc.setInsId(tbResult.getInsId());
			//검사 테이블 등록
			resCnt += inspectServ.insertBloodChem(bc);

		}

		Map<String, Object> map = new HashMap<String, Object>();
		if(resCnt > 0) {
			map.put("result", "success");
		}else {
			map.put("result", "fail");
		}
		return map;
	}

	@RequestMapping(value = "getBcList")
	public List<TbBloodChem> getBcList(TbBloodChem anti) {
		return inspectServ.getBcList(anti);
	}

	@RequestMapping(value = "insertCbc")
	public Map<String, Object> insertCbc(TbResult tbResult) {
		logger.info(tbResult.toString());

		int resCnt = 0;
		for(int i=0; i<tbResult.getBcList().size(); i++) {
			TbBloodChem bc = new TbBloodChem();
			bc.setInspNo(tbResult.getInspNo());
			bc.setItemName(tbResult.getBcList().get(i).get("itemName").toString());
			bc.setVal(tbResult.getBcList().get(i).get("val").toString());
			bc.setInsId(tbResult.getInsId());
			//검사 테이블 등록
			resCnt += inspectServ.insertCbc(bc);

		}

		Map<String, Object> map = new HashMap<String, Object>();
		if(resCnt > 0) {
			map.put("result", "success");
		}else {
			map.put("result", "fail");
		}
		return map;
	}

	@RequestMapping(value = "getCbcList")
	public List<TbBloodChem> getCbcList(TbBloodChem anti) {
		return inspectServ.getCbcList(anti);
	}

}
