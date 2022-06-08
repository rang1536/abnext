package kr.or.abnext.admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.abnext.domain.TbCode;
import kr.or.abnext.domain.TbFarm;
import kr.or.abnext.domain.TbHospital;
import kr.or.abnext.domain.TbUser;

@Service
public class AdminService {
	@Autowired
	private AdminDao adminDao;
	
	public List<TbCode> codeList(TbCode tbCode){
		return adminDao.codeList(tbCode);
	}
	
	public List<TbCode> selectCodeList(TbCode tbCode){
		return adminDao.selectCodeList(tbCode);
	}
	
	public int insertCode(TbCode tbCode){
		return adminDao.insertCode(tbCode);
	}

	public int updateCode(TbCode tbCode){
		return adminDao.updateCode(tbCode);
	}
	
	public int dupChk(TbCode tbCode){
		return adminDao.dupChk(tbCode);
	}
	
	public int getCodeLevel(TbCode tbCode){
		return adminDao.getCodeLevel(tbCode);
	}
	
	public int deleteCode(TbCode tbCode){
		return adminDao.deleteCode(tbCode);
	}
	
	/**
	 * @function : getResultMap
	 * @Description : 결과값 succ / fail 반환 공통함수
	 * @param : int
	 **/
	public Map<String, Object> getResultMap(int result){
		Map<String, Object> map = new HashMap<String, Object>();
		
		if(result == 1) {
			map.put("result", "succ");
		}else {
			map.put("result", "fail");
		}
		return map;
	}
	
	
	/**
	 * @function : addUserServ
	 * @Description : 회원등록
	 * @param : TbUser
	 **/
	public Map<String, Object> addUserServ(TbUser tbUser){
		int result = adminDao.addUser(tbUser);
		
		return getResultMap(result);
	}
	
	
	/**
	 * @function : searchHospitalServ
	 * @Description : 기관병원검색, 농장검색
	 * @param : TbHospital
	 **/
	public Map<String, Object> searchCompanyServ(String companyGb, String companyNm){
		List<TbHospital> hospList;
		List<TbFarm> farmList;
		Map<String, Object> map = new HashMap<String, Object>();
		
		if(companyGb.equals("hospital")) {
			TbHospital tbHospital = new TbHospital();
			tbHospital.setHospNm(companyNm);
			
			hospList = adminDao.searchHospital(tbHospital);
			
			map.put("hospList", hospList);
			
		}else if(companyGb.equals("farm")) {
			TbFarm tbFarm = new TbFarm();
			tbFarm.setFarmNm(companyNm);
			
			farmList = adminDao.searchFarm(tbFarm);
			map.put("farmList", farmList);
		}
		
		return map;
	}
	
	/**
	 * @function : getUserListServ
	 * @Description : 전체회원조회
	 * @param : 
	 * @return : List<TbUser>
	 **/
	public List<TbUser> getUserListServ(){
		return adminDao.getUserList();
	}
	
	
}
