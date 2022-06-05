package kr.or.abnext.admin;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.or.abnext.domain.TbUser;

@RestController
public class AdminRestController {
	@Autowired
	private AdminService adminServ;
	
	/*
	 * 회원가입
	 **/
	@RequestMapping(value = "addUser", method = RequestMethod.POST)
	public Map<String, Object> addUserCtrl(TbUser tbUser) {
		System.out.println("회원가입 시작~!!");
		
		return null;
	}
}
