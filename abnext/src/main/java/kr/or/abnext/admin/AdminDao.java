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
	
	public List<TbCode> codeList(TbCode tbCode){
		return sql.selectList("code.codeList", tbCode);
	}
	
	public int insertCode(TbCode tbCode){
		return sql.insert("code.insertCode", tbCode);
	}
	
	public int updateCode(TbCode tbCode){
		return sql.update("code.updateCode", tbCode);
	}
	
	public int getCodeLevel(TbCode tbCode){
		TbCode tc = sql.selectOne("code.getCodeLevel", tbCode);
		int codeLevel = 0;
		if(tc != null) {
			codeLevel = tc.getCodeLevel();
		}
		return codeLevel;
	}
	
	public int dupChk(TbCode tbCode){
		int a = sql.selectOne("code.dupChk", tbCode);
		return a;
	}
	
	public int deleteCode(TbCode tbCode){
		return sql.delete("code.deleteCode", tbCode);
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
	 * @function : addHosp
	 * @Description : 병원등록
	 * @param : TbHospital
	 **/
	public int addHosp(TbHospital tbHospital) {
		return sql.insert("admin.addHosp", tbHospital);
	}
	
	
	/**
	 * @function : addFarm
	 * @Description : 농장등록
	 * @param : TbFarm
	 **/
	public int addFarm(TbFarm tbFarm) {
		return sql.insert("admin.addFarm", tbFarm);
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
	
	
	/**
	 * @function : getUserList
	 * @Description : 회원조회
	 * @param : 
	 * @return:TbUser
	 **/
	public List<TbUser> getUserList() {
		return sql.selectList("admin.getUserList");
	}
	
	
	/**
	 * @function : getHospList
	 * @Description : 기관병원조회
	 * @param : 
	 * @return: List<TbHospital>
	 **/
	public List<TbHospital> getHospList() {
		return sql.selectList("admin.getHospList");
	}
	
	
	/**
	 * @function : getFarmList
	 * @Description : 농장조회
	 * @param : 
	 * @return: List<TbFarm>
	 **/
	public List<TbFarm> getFarmList() {
		return sql.selectList("admin.getFarmList");
	}
	
}
