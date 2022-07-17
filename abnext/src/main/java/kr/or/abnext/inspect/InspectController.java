package kr.or.abnext.inspect;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.or.abnext.admin.AdminService;
import kr.or.abnext.domain.TbCode;
import kr.or.abnext.domain.TbFile;
import kr.or.abnext.domain.TbHospital;
import kr.or.abnext.domain.TbInspection;
import kr.or.abnext.domain.TbRcept;
import kr.or.abnext.domain.TbSample;
import kr.or.abnext.domain.TbUser;

@Controller
@SessionAttributes({"userInfo"})
public class InspectController {

	@Autowired
	InspectService insServ;

	@Autowired
	AdminService admServ;

	private static final Logger logger = LoggerFactory.getLogger(InspectController.class);

	@RequestMapping(value = "introInspect")
	public String introInspect(Locale locale, Model model) {
		logger.info("requestInspect Method is start {}.", locale);

		return "inspect/introInspect";
	}

	@RequestMapping(value = "requestInspect")
	public String requestInspect(Locale locale, Model model, String page) {
		logger.info("requestInspect Method is start {}.", locale);

		String[] arr = { "1", "2" };
		List<TbRcept> list = insServ.recptList(arr);
		model.addAttribute("rceptList", list);

		return "inspect/requestInspect";
	}

	@RequestMapping(value = "modifyInspect")
	public String modifyInspect(Locale locale, Model model, TbRcept searchRcept) {
		logger.info("modifyInspect Method is start {}.", locale);
		// 접수정보
		TbRcept rcept = insServ.getRcept(searchRcept);

		// 시료정보
		TbSample tbSample = new TbSample();
		tbSample.setRqstNo("" + rcept.getRqstNo());
		List<TbSample> smplList = insServ.selectSampleList(tbSample);

		// 검사정보
		TbInspection tbInspection = new TbInspection();
		tbInspection.setRqstNo("" + rcept.getRqstNo());
		List<TbInspection> inspList = insServ.selectInspList(tbInspection);

		model.addAttribute("rceptInfo", rcept);
		model.addAttribute("smplList", smplList);
		model.addAttribute("inspList", inspList);
		return "inspect/modifyInspect";
	}

	@RequestMapping(value = "registerInspect")
	public String registerInspect(Locale locale, Model model, @ModelAttribute("userInfo") TbUser userBean) {
		logger.info("registerInspect Method is start {}.", locale);

		logger.info(userBean.toString());
		TbHospital hospBean = new TbHospital();
		TbUser docBean = new TbUser();
		if (!userBean.getHospNo().equals("")) {
			hospBean.setHospNo(Integer.parseInt(userBean.getHospNo()));
		}

		docBean.setUserId(userBean.getUserId());

		model.addAttribute("hospital", insServ.selectHospitalList(hospBean));
		model.addAttribute("doctor", insServ.selectDoctorList(docBean));
		model.addAttribute("species", insServ.selectSpeciesList());
		model.addAttribute("mediHist", insServ.selectMediHistList());
		model.addAttribute("inspTypeList", insServ.selectInspTypeList());

		return "inspect/registerInspect";
	}

	@RequestMapping(value = "registerInspectByAdmin")
	public String registerInspectByAdmin(Locale locale, Model model) {
		logger.info("registerInspect Method is start {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "inspect/registerInspect2";
	}

	@RequestMapping(value = "settingInspectList")
	public String settingInspectList(Locale locale, Model model) {
		logger.info("settingInspectList Method is start {}.", locale);

		String[] arr = { "2" };
		List<TbRcept> list = insServ.recptList(arr);
		model.addAttribute("rceptList", list);

		return "inspect/settingInspectList";
	}

	@RequestMapping(value = "settingInspectModify")
	public String settingInspectModify(Locale locale, Model model, TbRcept searchRcept) {
		logger.info("settingInspectModify Method is start {}.", locale);

		// 접수정보
		TbRcept rcept = insServ.getRcept(searchRcept);

		// 시료정보
		System.out.println(">>>>>>>>>>> 신청번호 확인 : " + "" + rcept.getRqstNo());
		TbSample tbSample = new TbSample();
		tbSample.setRqstNo("" + rcept.getRqstNo());
		List<TbSample> smplList = insServ.selectSampleList(tbSample);

		// 검사정보
		TbInspection tbInspection = new TbInspection();
		tbInspection.setRqstNo("" + rcept.getRqstNo());
		List<TbInspection> inspList = insServ.selectInspList(tbInspection);

		// 시료상태
		/*
		TbCode code = new TbCode();
		code.setUppCodeId("S001");
		List<TbCode> codeList = admServ.selectCodeList(code);
		*/
		model.addAttribute("rceptInfo", rcept);
		//model.addAttribute("codeList", codeList);
		model.addAttribute("smplList", smplList);
		model.addAttribute("inspList", inspList);
		model.addAttribute("inspTypeList", insServ.selectInspTypeList());
		return "inspect/settingInspectModify";
	}

	@RequestMapping(value = "resultInspectList")
	public String resultInspectList(Locale locale, Model model) {
		logger.info("resultInspectList Method is start {}.", locale);
		String[] arr = { "3", "4" };
		List<TbRcept> list = insServ.recptList(arr);
		model.addAttribute("rceptList", list);
		return "inspect/resultInspectList";
	}

	@RequestMapping(value = "resultInspectModify")
	public String resultInspectModify(Locale locale, Model model, TbRcept searchRcept) {
		logger.info("resultInspectModify Method is start {}.", locale);

		// 접수정보
		TbRcept rcept = insServ.getRcept(searchRcept);

		// 시료정보
		TbSample tbSample = new TbSample();
		tbSample.setRqstNo("" + rcept.getRqstNo());
		List<TbSample> smplList = insServ.selectSampleList(tbSample);

		// 검사정보
		TbInspection tbInspection = new TbInspection();
		tbInspection.setRqstNo("" + rcept.getRqstNo());
		List<TbInspection> inspList = insServ.selectInspList(tbInspection);

		model.addAttribute("rceptInfo", rcept);
		model.addAttribute("smplList", smplList);
		model.addAttribute("inspList", inspList);

		return "inspect/resultInspectModify";
	}

	@RequestMapping(value = "finalInspectList")
	public String finalInspectList(Locale locale, Model model) {
		logger.info("finalInspectList Method is start {}.", locale);
		String[] arr = { "4", "5" };
		List<TbRcept> list = insServ.recptList(arr);
		model.addAttribute("rceptList", list);
		return "inspect/finalInspectList";
	}

	@RequestMapping(value = "finalInspectModify")
	public String finalInspectModify(Locale locale, Model model, TbRcept searchRcept) {
		logger.info("finalInspectModify Method is start {}.", locale);

		// 접수정보
		TbRcept rcept = insServ.getRcept(searchRcept);

		// 시료정보
		TbSample tbSample = new TbSample();
		tbSample.setRqstNo("" + rcept.getRqstNo());
		List<TbSample> smplList = insServ.selectSampleList(tbSample);

		// 검사정보
		TbInspection tbInspection = new TbInspection();
		tbInspection.setRqstNo("" + rcept.getRqstNo());
		List<TbInspection> inspList = insServ.selectInspList(tbInspection);

		// 시료상태
		TbCode code = new TbCode();
		code.setUppCodeId("S001");
		List<TbCode> codeList = admServ.selectCodeList(code);

		model.addAttribute("rceptInfo", rcept);
		model.addAttribute("codeList", codeList);
		model.addAttribute("smplList", smplList);
		model.addAttribute("inspList", inspList);

		return "inspect/finalInspectModify";
	}

	@RequestMapping(value = "allInspectList")
	public String allInspectList(Locale locale, Model model) {
		logger.info("allInspectList Method is start {}.", locale);
		String[] arr = { "1", "2", "3", "4", "5" };
		List<TbRcept> list = insServ.recptList(arr);
		model.addAttribute("rceptList", list);
		return "inspect/allInspectList";
	}

	@RequestMapping(value = "viewInspect")
	public String viewInspect(Locale locale, Model model, TbRcept searchRcept) {
		logger.info("viewInspect Method is start {}.", locale);

		// 접수정보
		TbRcept rcept = insServ.getRcept(searchRcept);

		// 시료정보
		TbSample tbSample = new TbSample();
		tbSample.setRqstNo("" + searchRcept.getRqstNo());
		List<TbSample> smplList = insServ.selectSampleList(tbSample);

		// 검사정보
		TbInspection tbInspection = new TbInspection();
		tbInspection.setRqstNo("" + searchRcept.getRqstNo());
		List<TbInspection> inspList = insServ.selectInspList(tbInspection);

		// 시료상태
		TbCode code = new TbCode();
		code.setUppCodeId("S001");
		List<TbCode> codeList = admServ.selectCodeList(code);

		model.addAttribute("rceptInfo", rcept);
		model.addAttribute("codeList", codeList);
		model.addAttribute("smplList", smplList);
		model.addAttribute("inspList", inspList);

		return "inspect/viewInspect";
	}

}
