package kr.or.abnext.admin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.abnext.domain.TbCode;
import kr.or.abnext.domain.TbFarm;
import kr.or.abnext.domain.TbHospital;
import kr.or.abnext.domain.TbUser;

@Repository
public class AdminDao {
	@Autowired
	private SqlSessionTemplate sql;
	
	public List<TbCode> codeList(){
		return sql.selectList("code.codeList");
	}
	
	
	/**
	 * @function : addUser
	 * @Description : 회원등록
	 * @param : TbUser
	 **/
	public int addUser(TbUser tbUser) {
		return sql.insert("admin.addUser", tbUser);
	}
	
	/**
	 * @function : searchHospital
	 * @Description : 병원검색
	 * @param : TbHospital
	 **/
	public List<TbHospital> searchHospital(TbHospital tbHospital) {
		return sql.selectList("admin.searchHospital", tbHospital);
	}
	
	/**
	 * @function : searchFarm
	 * @Description : 농장검색
	 * @param : TbFarm
	 **/
	public List<TbFarm> searchFarm(TbFarm tbFarm) {
		return sql.selectList("admin.searchFarm", tbFarm);
	}
	
}
