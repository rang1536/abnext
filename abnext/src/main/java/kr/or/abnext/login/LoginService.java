package kr.or.abnext.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class LoginService {
	@Autowired
	private LoginDao loginDao;
}
