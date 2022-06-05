package kr.or.abnext.login;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.or.abnext.domain.TbUser;

@RestController
public class LoginRestController {
	@Autowired
	LoginService loginServ;
	
	/*
	 * 로그인
	 **/
	@RequestMapping(value = "userLogin", method = RequestMethod.POST)
	public Map<String, Object> userLoginCtrl(TbUser tbUser) {
		System.out.println("회원 로그인~!!");
		
		return loginServ.userLoginServ(tbUser);
	}

	/*
	 * 아이디 중복체크
	 **/
	@RequestMapping(value = "idChk", method = RequestMethod.POST)
	public Map<String, Object> idChkCtrl(TbUser tbUser) {
		System.out.println("아이디 중복체크 시작~!!");
		
		return loginServ.idChkServ(tbUser);
	}
	
	
	
}
