package kr.or.abnext.login;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.abnext.domain.TbUser;


@Service
public class LoginService {
	@Autowired
	private LoginDao loginDao;


	/**
	 * @function : userLoginServ
	 * @Description : 회원로그인
	 * @param : TbUser
	 **/
	public Map<String, Object> userLoginServ(TbUser tbUser){
		List<TbUser> list = loginDao.userLogin(tbUser);
		Map<String, Object> resMap = new HashMap<String, Object>();

		if(list.size() == 0) {
			resMap.put("result", "noUser");
		}else if(list.size() > 1) {
			resMap.put("result", "tooManyUser");
		}else if(list.size() == 1) {
			if(list.get(0).getUserStat().equals("F002-01")) { //신청중
				resMap.put("result", "noAllowed");

			}else if(list.get(0).getUserStat().equals("F002-02")) { //승인
				resMap.put("result", "succ");
				resMap.put("userInfo", list.get(0));

			}else if(list.get(0).getUserStat().equals("F002-03")) {	//사용정지
				resMap.put("result", "stopId");

			}
		}

		return resMap;
	}

	/**
	 * @function : idChkServ
	 * @Description : 아이디중복체크
	 * @param : TbUser
	 **/
	public Map<String, Object> idChkServ(TbUser tbUser){
		Map<String, Object> resMap = new HashMap<String, Object>();

		int result = loginDao.idChk(tbUser);
		System.out.println("IDCHK : "+result);
		if(result == 0) {
			resMap.put("result", "succ");
		}else {
			resMap.put("result", "fail");
		}

		return resMap;
	}

}
