package kr.or.abnext.login;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	@Autowired
	LoginService loginServ;
	
	
	/*
	 * 로그인페이지 연결.
	 * */
	@RequestMapping(value = "loginPage", method = RequestMethod.GET)
	public String loginPage(Model model) {
		
		return "login/login";
	}
	
	/*
	 * 회원가입페이지연결.
	 * */
	@RequestMapping(value = "addUserPage", method = {RequestMethod.GET, RequestMethod.POST})
	public String addUserPage(Model model) {
		
		return "login/AddUser";
	}
}
