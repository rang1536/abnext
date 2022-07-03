package kr.or.abnext.admin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.abnext.domain.TbCode;
import kr.or.abnext.domain.TbFarm;
import kr.or.abnext.domain.TbFile;
import kr.or.abnext.domain.TbHospital;
import kr.or.abnext.domain.TbUser;
import kr.or.abnext.util.UtilFile;

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

	public TbCode getCode(TbCode tbCode){
		return adminDao.getCode(tbCode);
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

	public int modChk(TbCode tbCode){
		return adminDao.modChk(tbCode);
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

	/**
	 * @function : getUserListServ
	 * @Description : 회원조회
	 * @param :
	 * @return : List<TbUser>
	 **/
	public List<TbUser> getUserListServ(TbUser tbUser){
		return adminDao.getUserList(tbUser);
	}

	/**
	 * @function : getHospListServ
	 * @Description : 기관병원조회
	 * @param :
	 * @return: List<TbHospital>
	 **/
	public List<TbHospital> getHospListServ() {
		return adminDao.getHospList();
	}


	/**
	 * @function : getHospListServ
	 * @Description : 기관병원조회
	 * @param :
	 * @return: TbHospital
	 **/
	public TbHospital getHospListServ(TbHospital tbHospital, String userNo) {
		tbHospital = adminDao.getHospList(tbHospital);
		if(tbHospital != null && !userNo.equals("")) {
			TbUser tbUser = new TbUser();
			tbUser.setHospNo(String.valueOf(tbHospital.getHospNo()));
			tbUser.setUserNo(Integer.parseInt(userNo));

			adminDao.modifyUser(tbUser);
		}

		return tbHospital;
	}


	/**
	 * @function : getFarmListServ
	 * @Description : 농장조회
	 * @param :
	 * @return: List<TbFarm>
	 **/
	public List<TbFarm> getFarmListServ() {
		return adminDao.getFarmList();
	}


	/**
	 * @function : getFarmListServ
	 * @Description : 농장조회
	 * @param : TbFarm, userNo
	 * @return: TbFarm
	 * @override
	 **/
	public TbFarm getFarmListServ(TbFarm tbFarm, String userNo) {
		tbFarm = adminDao.getFarmList(tbFarm);

		if(tbFarm != null && !userNo.equals("")) {
			TbUser tbUser = new TbUser();
			tbUser.setFarmNo(String.valueOf(tbFarm.getFarmNo()));
			tbUser.setUserNo(Integer.parseInt(userNo));

			adminDao.modifyUser(tbUser);
		}

		return tbFarm;
	}



	/**
	 * @function : addHosp
	 * @Description : 병원등록
	 * @param : TbHospital
	 **/
	public Map<String, Object> addHospServ(TbHospital tbHospital) {
		Map<String, Object> map = getResultMap(adminDao.addHosp(tbHospital));

		if(map.get("result").equals("succ")) {
			UtilFile utilFile = new UtilFile();

			if(tbHospital.getHospRnFile() != null) {
				TbFile tbFile = utilFile.singleUploadFile(tbHospital.getHospRnFile());

				if(tbFile != null) {
					tbFile.setHospNo(tbHospital.getHospNo());
					tbFile.setFileGb("F001-01"); //사업자등록증
					tbFile.setFileMemo("사업자등록증");

					map = getResultMap(adminDao.addFile(tbFile));
				}
			}

		}

		return map;
	}


	/**
	 * @function : delHospServ
	 * @Description : 병원삭제
	 * @param : java.util.ArrayList
	 **/
	public Map<String, Object> delHospServ(ArrayList<String> hospList) {
		Map<String, Object> map = new HashMap<String, Object>();

		int result = adminDao.delHosp(hospList);

		//파일삭제도 넣어야 하려나..

		if(result > 0) {
			map.put("result", "succ");
		}else {
			map.put("result", "fail");
		}

		return map;
	}


	/**
	 * @function : addFarmServ
	 * @Description : 농장등록
	 * @param : TbFarm
	 **/
	public Map<String, Object> addFarmServ(TbFarm tbFarm) {
		Map<String, Object> map = getResultMap(adminDao.addFarm(tbFarm));

		if(map.get("result").equals("succ")) {
			UtilFile utilFile = new UtilFile();

			if(tbFarm.getFarmRnFile() != null) {
				TbFile tbFile = utilFile.singleUploadFile(tbFarm.getFarmRnFile());

				if(tbFile != null) {
					tbFile.setHospNo(tbFarm.getFarmNo());
					tbFile.setFileGb("F001-01"); //사업자등록증
					tbFile.setFileMemo("사업자등록증");

					map = getResultMap(adminDao.addFile(tbFile));
				}
			}

		}

		return map;
	}


	/**
	 * @function : delFarmServ
	 * @Description : 농장삭제
	 * @param : java.util.ArrayList
	 **/
	public Map<String, Object> delFarmServ(ArrayList<String> farmList) {
		Map<String, Object> map = new HashMap<String, Object>();

		int result = adminDao.delFarm(farmList);

		//파일삭제도 넣어야 하려나..

		if(result > 0) {
			map.put("result", "succ");
		}else {
			map.put("result", "fail");
		}

		return map;
	}


	/**
	 * @function : allCompanySearchServ
	 * @Description : 전체조회
	 * @param : String
	 * @return : Map<Stirng, Object>
	 **/
	public Map<String, Object> allCompanySearchServ(String popSearchNm) {
		Map<String, Object> params = new HashMap<String, Object>();
		Map<String, Object> resMap = new HashMap<String, Object>();

		params.put("popSearchNm", popSearchNm);

		resMap.put("list", adminDao.allCompanySearch(params));
		return resMap;
	}



	/**
	 * @function : getDoctorListServ
	 * @Description : 소속 수의사 조회
	 * @param : Map<String, Object>
	 * @return: List TbUser
	 **/
	public List<TbUser> getDoctorListServ(TbHospital tbHospital){
		return adminDao.getDoctorList(tbHospital);
	}


	/**
	 * @function : modifyHospitalServ
	 * @Description : 기관수정
	 * @param : TbHospital
	 **/
	public Map<String, Object> modifyHospitalServ(TbHospital tbHospital) {
		//기존파일 삭제 및 신규등록
		if(tbHospital.getHospRnFile() != null) {
			Map<String, Object> param = new HashMap<String, Object>();
			param.put("hospNo", tbHospital.getHospNo());

			int result = adminDao.removeRnFile(param);

			UtilFile utilFile = new UtilFile();
			TbFile tbFile = utilFile.singleUploadFile(tbHospital.getHospRnFile());

			if(tbFile != null) {
				tbFile.setHospNo(tbHospital.getHospNo());
				tbFile.setFileGb("F001-01"); //사업자등록증
				tbFile.setFileMemo("사업자등록증");

				adminDao.addFile(tbFile);
			}
		}

		return getResultMap(adminDao.modifyHospital(tbHospital));
	}


	/**
	 * @function : modifyFarmServ
	 * @Description : 농장수정
	 * @param : TbHospital
	 **/
	public Map<String, Object> modifyFarmServ(TbFarm tbFarm) {
		//기존파일 삭제 및 신규등록
		if(tbFarm.getFarmRnFile() != null) {
			Map<String, Object> param = new HashMap<String, Object>();
			param.put("farmNo", tbFarm.getFarmNo());

			int result = adminDao.removeRnFile(param);

			UtilFile utilFile = new UtilFile();
			TbFile tbFile = utilFile.singleUploadFile(tbFarm.getFarmRnFile());

			if(tbFile != null) {
				tbFile.setFarmNo(tbFarm.getFarmNo());
				tbFile.setFileGb("F001-01"); //사업자등록증
				tbFile.setFileMemo("사업자등록증");

				adminDao.addFile(tbFile);
			}
		}

		return getResultMap(adminDao.modifyFarm(tbFarm));
	}

	/**
	 * @function : getUserInfo
	 * @Description : 회원정보조회
	 * @param : TbUser
	 * @return : TbUser
	 **/
	public TbUser getUserInfoServ(TbUser tbUser) {
		tbUser = adminDao.getUserInfo(tbUser);

		Map<String, Object> param = new HashMap<String, Object>();
		param.put("codeId", "F002");

		List<TbCode> codeList = adminDao.getCodeList(param);

		if(codeList != null) {
			tbUser.setUserStatList(codeList);
		}

		return tbUser;
	}



	//resetPassword
	/**
	 * @function : resetPassword
	 * @Description : 비번초기화
	 * @param : TbUser
	 * @return : Map<String, Object>
	 **/
	public Map<String, Object> resetPasswordServ(TbUser tbUser) {

		return getResultMap(adminDao.modifyUser(tbUser));
	}




}
