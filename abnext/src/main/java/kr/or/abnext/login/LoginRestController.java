package kr.or.abnext.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class LoginRestController {
	@Autowired
	LoginService loginServ;
}
