package kr.or.abnext.admin;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.abnext.domain.AddFarm;
import kr.or.abnext.domain.AddHospital;
import kr.or.abnext.domain.TbCode;
import kr.or.abnext.domain.TbFarm;
import kr.or.abnext.domain.TbFile;
import kr.or.abnext.domain.TbHospital;
import kr.or.abnext.domain.TbMenu;
import kr.or.abnext.domain.TbRcept;
import kr.or.abnext.domain.TbUser;
import kr.or.abnext.domain.TbUserDamdang;

@Repository
public class AdminDao {
	@Autowired
	private SqlSessionTemplate sql;

	public List<TbCode> codeList(TbCode tbCode){
		return sql.selectList("code.codeList", tbCode);
	}

	public List<TbCode> selectCodeList(TbCode tbCode){
		return sql.selectList("code.selectCodeList", tbCode);
	}

	public TbCode getCode(TbCode tbCode){
		return sql.selectOne("code.getCode", tbCode);
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

	public int modChk(TbCode tbCode){
		int a = sql.selectOne("code.modChk", tbCode);
		return a;
	}

	public int deleteCode(TbCode tbCode){
		return sql.delete("code.deleteCode", tbCode);
	}

	public int deleteCodeById(TbCode tbCode){
		return sql.delete("code.deleteCodeById", tbCode);
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

	public int addHosp(AddHospital addHospital) {
		return sql.insert("admin.addHosp2", addHospital);
	}

	/**
	 * @function : delHosp
	 * @Description : 병원삭제
	 * @param : java.util.ArrayList
	 **/
	public int delHosp(ArrayList<String> array) {
		return sql.delete("admin.delHosp", array);
	}


	/**
	 * @function : addFarm
	 * @Description : 농장등록
	 * @param : TbFarm
	 **/
	public int addFarm(TbFarm tbFarm) {
		return sql.insert("admin.addFarm", tbFarm);
	}

	public int addFarm(AddFarm addFarm) {
		return sql.insert("admin.addFarm2", addFarm);
	}

	/**
	 * @function : delFarm
	 * @Description : 농장삭제
	 * @param : java.util.ArrayList
	 **/
	public int delFarm(ArrayList<String> array) {
		return sql.delete("admin.delFarm", array);
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
	 * @return:List<TbUser>
	 **/
	public List<TbUser> getUserList() {
		return sql.selectList("admin.getUserList");
	}


	/**
	 * @function : getUserList
	 * @Description : 회원조회2
	 * @param :
	 * @return:List<TbUser>
	 **/
	public List<TbUser> getUserList(TbUser tbUser) {
		return sql.selectList("admin.getUserList", tbUser);
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
	 * @function : getHospList
	 * @Description : 기관병원조회
	 * @param :
	 * @return: TbHospital
	 **/
	public TbHospital getHospList(TbHospital tbHospital) {
		return sql.selectOne("admin.getHospList", tbHospital);
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


	/**
	 * @function : getFarmList
	 * @Description : 농장조회
	 * @param :
	 * @return: TbFarm
	 **/
	public TbFarm getFarmList(TbFarm tbFarm) {
		return sql.selectOne("admin.getFarmList", tbFarm);
	}


	/**
	 * @function : addFile
	 * @Description : 파일정보등록
	 * @param : TbFile
	 * @return: integer
	 **/
	public int addFile(TbFile tbFile) {
		return sql.insert("admin.addFile", tbFile);
	}


	/**
	 * @function : allCompanySearch
	 * @Description : 전체조회
	 * @param : Map<String, Object>
	 * @return: List TbHospital TbFarm Union
	 **/
	public List<TbHospital> allCompanySearch(Map<String, Object> params){
		return sql.selectList("admin.allCompanySearch", params);
	}


	/**
	 * @function : getDoctorList
	 * @Description : 소속 수의사 조회
	 * @param : Map<String, Object>
	 * @return: List TbUser
	 **/
	public List<TbUser> getDoctorList(TbHospital tbHospital){
		return sql.selectList("admin.getDoctorList", tbHospital);
	}


	/**
	 * @function : modifyHospital
	 * @Description : 기관수정
	 * @param : TbHospital
	 **/
	public int modifyHospital(TbHospital tbHospital) {
		return sql.update("admin.modifyHospital", tbHospital);
	}


	/**
	 * @function : modifyFarm
	 * @Description : 농장수정
	 * @param : TbFarm
	 **/
	public int modifyFarm(TbFarm tbFarm) {
		return sql.update("admin.modifyFarm", tbFarm);
	}


	/**
	 * @function : removeRnFile
	 * @Description : 사업자등록증삭제
	 * @param : Map<Sting, Object>
	 **/
	public int removeRnFile(Map<String, Object> param) {
		return sql.delete("admin.removeRnFile", param);
	}


	/**
	 * @function : getUserInfo
	 * @Description : 회원정보조회
	 * @param : TbUser
	 * @return : TbUser
	 **/
	public TbUser getUserInfo(TbUser tbUser) {
		return sql.selectOne("admin.getUserInfo", tbUser);
	}


	//getUserInfoByRcept
	public TbUser getUserInfoByRcept(TbRcept tbRcept) {
		return sql.selectOne("admin.getUserInfoByRcept", tbRcept);
	}


	/**
	 * @function : getCodeList
	 * @Description : 공통코드조회
	 * @param : Map<String, Object>
	 * @return : TbCode
	 **/
	public List<TbCode> getCodeList(Map<String, Object> param){
		return sql.selectList("admin.getCodeList", param);
	}

	public List<TbCode> getCodeList2(TbUserDamdang userDamdang){
		return sql.selectList("admin.getCodeList2", userDamdang);
	}

	//removeDamdang
	public int removeDamdang(TbUser tbUser){
		return sql.delete("admin.removeDamdang", tbUser);
	}


	/**
	 * @function : removeFile
	 * @Description : 파일정보삭제
	 * @param : TbFile
	 * @return : int
	 **/
	public int removeFile(TbFile tbFile) {
		return sql.delete("admin.removeFile", tbFile);
	}

	/**
	 * @function : modifyUser
	 * @Description : 회원정보수정
	 * @param : TbUser
	 * @return : int
	 **/
	public int modifyUser(TbUser tbUser) {
		return sql.update("admin.modifyUser", tbUser);
	}


	public List<TbMenu> getMenuList(TbMenu tbMenu){
		return sql.selectList("admin.getMenuList", tbMenu);
	}


	//modifyMenu
	public int modifyMenu(TbMenu tbMenu) {
		return sql.update("admin.modifyMenu", tbMenu);
	}

	//insertDamdang
	public int insertDamdang(TbUserDamdang userDamdang) {
		return sql.insert("admin.insertDamdang", userDamdang);
	}
}
