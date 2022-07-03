package kr.or.abnext.login;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.or.abnext.domain.TbUser;

@RestController
@SessionAttributes({"userInfo"})

public class LoginRestController {
	@Autowired
	LoginService loginServ;

	/*
	 * 로그인
	 **/
	@RequestMapping(value = "userLogin", method = RequestMethod.POST)
	public Map<String, Object> userLoginCtrl(TbUser tbUser, Model model) {
		System.out.println("회원 로그인~!!");

		Map<String, Object> map = loginServ.userLoginServ(tbUser);

		if(map.get("result").equals("succ")) { //로그인 됬을때 회원정보 세션세팅
			model.addAttribute("userInfo", map.get("userInfo"));
		}

		return map;
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
