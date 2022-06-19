package kr.or.abnext.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.abnext.domain.TbCode;
import kr.or.abnext.domain.TbFarm;
import kr.or.abnext.domain.TbHospital;

@Controller
public class AdminController {
	@Autowired
	private AdminService adminServ;

	@RequestMapping(value = "userList", method = RequestMethod.GET)
	public String userListCtrl(Model model) {
		System.out.println("회원관리~!!");

		model.addAttribute("userList", adminServ.getUserListServ());
		return "admin/userList";
	}

	@RequestMapping(value = "hospList", method = RequestMethod.GET)
	public String hospListCtrl(Model model) {
		System.out.println("병원관리~!!");

		model.addAttribute("hospList", adminServ.getHospListServ());
		return "admin/hospList";
	}

	@RequestMapping(value = "farmList", method = RequestMethod.GET)
	public String farmListCtrl(Model model) {
		System.out.println("농장관리~!!");

		model.addAttribute("farmList", adminServ.getFarmListServ());
		return "admin/farmList";
	}

	@RequestMapping(value = "codeList", method = RequestMethod.GET)
	public String codeListCtrl(Model model) {
		System.out.println("코드관리~!!");

		List<TbCode> list = adminServ.codeList(null);
		model.addAttribute("codeList", list);
		return "admin/codeList";
	}

	@RequestMapping(value = "levList", method = RequestMethod.GET)
	public String levListCtrl(Model model) {
		System.out.println("권한관리~!!");

		return "admin/levList";
	}


	/*======================================== 수정페이지 ======================================== */

	/*
	 * 기관수정
	 * */
	@RequestMapping(value = "modifyHospital", method = RequestMethod.GET)
	public String modifyHospitalCtrl(@RequestParam(value="modifyHospNo")String hospNo
			, Model model) {
		System.out.println("기관정보 수정페이지 연결~!!");
		TbHospital tbHospital = new TbHospital();
		tbHospital.setHospNo(Integer.parseInt(hospNo));

		model.addAttribute("hosp", adminServ.getHospListServ(tbHospital));
		model.addAttribute("doctor", adminServ.getDoctorListServ(tbHospital));

		return "admin/modify_hospital";
	}


	/*
	 * 농장수정
	 * */
	@RequestMapping(value = "modifyFarm", method = RequestMethod.GET)
	public String modifyFarm(@RequestParam(value="modifyFarmNo")String farmNo
			, Model model) {
		System.out.println("농장정보 수정페이지 연결~!!");
		TbFarm tbFarm = new TbFarm();
		tbFarm.setFarmNo(Integer.parseInt(farmNo));

		model.addAttribute("farm", adminServ.getFarmListServ(tbFarm));

		return "admin/modify_farm";
	}
}
