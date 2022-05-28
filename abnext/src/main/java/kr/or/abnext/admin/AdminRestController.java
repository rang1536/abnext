package kr.or.abnext.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AdminRestController {
	@Autowired
	private AdminService adminServ;
}
