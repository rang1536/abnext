package kr.or.abnext.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {
	@Autowired
	private AdminService adminServ;
	
	@RequestMapping(value = "userList", method = RequestMethod.GET)
	public String userListCtrl(Model model) {
		System.out.println("회원관리~!!");
		
		return "admin/userList";
	}
	
	@RequestMapping(value = "hospList", method = RequestMethod.GET)
	public String hospListCtrl(Model model) {
		System.out.println("병원관리~!!");
		
		return "admin/hospList";
	}
	
	@RequestMapping(value = "farmList", method = RequestMethod.GET)
	public String farmListCtrl(Model model) {
		System.out.println("농장관리~!!");
		
		return "admin/farmList";
	}
	
	@RequestMapping(value = "codeList", method = RequestMethod.GET)
	public String codeListCtrl(Model model) {
		System.out.println("코드관리~!!");
		
		return "admin/codeList";
	}
	
	@RequestMapping(value = "levList", method = RequestMethod.GET)
	public String levListCtrl(Model model) {
		System.out.println("권한관리~!!");
		
		return "admin/levList";
	}
	
}
