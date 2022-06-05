package kr.or.abnext.login;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.abnext.domain.TbUser;

@Repository
public class LoginDao {
	@Autowired
	private SqlSessionTemplate sql;
	
	/**
	 * @function : userLogin
	 * @Description : 회원로그인
	 * @param : TbUser
	 **/
	public List<TbUser> userLogin(TbUser tbUser){
		return sql.selectList("login.userLogin", tbUser);
	}
	
	
	/**
	 * @function : idChk
	 * @Description : 아이디중복체크
	 * @param : TbUser
	 **/
	public int idChk(TbUser tbUser){
		return sql.selectOne("login.idChk", tbUser);
	}
	
	
}
