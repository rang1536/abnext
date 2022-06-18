package kr.or.abnext.admin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import kr.or.abnext.domain.TbCode;
import kr.or.abnext.domain.TbFarm;
import kr.or.abnext.domain.TbFile;
import kr.or.abnext.domain.TbHospital;
import kr.or.abnext.domain.TbUser;
import kr.or.abnext.util.UtilFile;

@RestController
public class AdminRestController {
	@Autowired
	private AdminService adminServ;

	/*
	 * 회원가입
	 **/
	@RequestMapping(value = "addUserCtrl", method = {RequestMethod.GET, RequestMethod.POST})
	public Map<String, Object> addUserCtrl(TbUser tbUser) {
		System.out.println("회원가입 시작~!!");
		//System.out.println(">>> tbUser : "+tbUser);

		return adminServ.addUserServ(tbUser);
	}

	/**
	 * 기관, 병원, 농장검색
	 **/
	@RequestMapping(value = "searchCompany", method = {RequestMethod.GET, RequestMethod.POST})
	public Map<String, Object> searchCompanyCtrl(String companyGb, String companyNm) {
		System.out.println("기관농장검색 시작~!!");

		return adminServ.searchCompanyServ(companyGb, companyNm);
	}

	/*
	 * 코드조회
	 **/
	@RequestMapping(value = "searchCodeList", method = RequestMethod.POST)
	public List<TbCode> searchCodeList(TbCode tbCode) {
		System.out.println("코드조회 시작~!!");
		List<TbCode> list = adminServ.codeList(tbCode);
		return list;
	}

	/*
	 * 코드등록
	 **/
	@RequestMapping(value = "insertCode", method = RequestMethod.POST)
	public Map<String, Object> insertCode(TbCode tbCode) {
		System.out.println("코드조회 시작~!!");

		Map<String, Object> map = new HashMap<String, Object>();

		int dupCnt = adminServ.dupChk(tbCode);
		if(dupCnt > 0 && tbCode.getCodeNo() == 999999999) {
			map.put("result", "dup");
			return map;
		}

		int modChk = adminServ.modChk(tbCode);
		if(modChk > 0 && tbCode.getCodeNo() != 999999999) {
			int i = adminServ.updateCode(tbCode);
			if(i > 0) {
				map.put("result", "success");
			}else {
				map.put("result", "fail");
			}
		}else {
			int codeLevel = adminServ.getCodeLevel(tbCode);
			tbCode.setCodeLevel(codeLevel+1);

			int i = adminServ.insertCode(tbCode);
			if(i > 0) {
				map.put("result", "success");
			}else {
				map.put("result", "fail");
			}
		}
		return map;
	}

	/*
	 * 코드삭제
	 **/
	@RequestMapping(value = "deleteCode", method = RequestMethod.POST)
	public Map<String, Object> deleteCode(TbCode tbCode) {
		System.out.println("코드조회 시작~!!");
		int i = adminServ.deleteCode(tbCode);
		Map<String, Object> map = new HashMap<String, Object>();
		if(i > 0) {
			map.put("result", "success");
		}else {
			map.put("result", "fail");
		}

		return map;
	}


	/*
	 * 코드조회
	 **/
	@RequestMapping(value = "selectCodeList", method = RequestMethod.POST)
	public List<TbCode> selectCodeList(TbCode tbCode) {
		System.out.println("코드조회 시작~!!");
		List<TbCode> list = adminServ.selectCodeList(tbCode);
		return list;
	}

	/*
	 * 코드조회
	 **/
	@RequestMapping(value = "getCode", method = RequestMethod.POST)
	public TbCode getCode(TbCode tbCode) {
		System.out.println("코드상세조회 시작~!!");
		return adminServ.getCode(tbCode);
	}

	/**
	 * 기관등록
	 * */
	@RequestMapping(value = "addHospCtrl", method = RequestMethod.POST)
	public Map<String, Object> addHospCtrl(TbHospital tbHospital) {
			//, @RequestParam("hospRnFile") MultipartFile file
		System.out.println("병원등록 시작~!!");

		System.out.println("파일명확인 : "+tbHospital.getHospRnFile().getOriginalFilename());

		Map<String, Object> map = adminServ.addHospServ(tbHospital);
		return map;
	}

	/**
	 * 기관삭제
	 * */
	@RequestMapping(value = "delHospCtrl", method = RequestMethod.POST)
	public Map<String, Object> delHospCtrl(@RequestParam(value="hospList[]") ArrayList<String> hospList) {
			//, @RequestParam("hospRnFile") MultipartFile file
		System.out.println("병원삭제 시작~!!");

		System.out.println("hospList : "+hospList);

		Map<String, Object> map = adminServ.delHospServ(hospList);
		return map;
	}


	/**
	 * 병원등록
	 * */
	@RequestMapping(value = "addFarmCtrl", method = RequestMethod.POST)
	public Map<String, Object> addFarmCtrl(TbFarm tbFarm) {
		System.out.println("농장등록 시작~!!");
		Map<String, Object> map = adminServ.addFarmServ(tbFarm);
		return map;
	}


	/**
	 * 농장삭제
	 * */
	@RequestMapping(value = "delFarmCtrl", method = RequestMethod.POST)
	public Map<String, Object> delFarmCtrl(@RequestParam(value="farmList[]") ArrayList<String> farmList) {
		System.out.println("농장삭제 시작~!!");

		System.out.println("farmList : "+farmList);

		Map<String, Object> map = adminServ.delFarmServ(farmList);
		return map;
	}


	/**
	 * 병원조회 단건
	 * */
	@RequestMapping(value = "getHospInfo", method = RequestMethod.POST)
	public Map<String, Object> getHospInfoCtrl(TbHospital tbHospital) {
		System.out.println("병원정보 조회 시작~!!");

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("hospInfo", adminServ.getHospListServ(tbHospital));
		return map;
	}


	/**
	 * 농장조회 단건
	 * */
	@RequestMapping(value = "getFarmInfo", method = RequestMethod.POST)
	public Map<String, Object> getFarmInfoCtrl(TbFarm tbFarm) {
		System.out.println("농장정보 조회 시작~!!");

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("farmInfo", adminServ.getFarmListServ(tbFarm));
		return map;

	}


	/**
	 * 기관, 병원, 농장 전체조회
	 * */
	@RequestMapping(value = "allCompanySearch", method = RequestMethod.POST)
	public Map<String, Object> allCompanySearchCtrl(
			@RequestParam(value="popSearchNm", defaultValue = "noNm") String popSearchNm) {
		System.out.println("회사 조회 시작~!!");

		Map<String, Object> map = adminServ.allCompanySearchServ(popSearchNm);
		return map;
	}


	/**
	 * 기관수정
	 * */
	@RequestMapping(value = "modifyHospCtrl", method = RequestMethod.POST)
	public Map<String, Object> modifyHospCtrl(TbHospital tbHospital) {
		System.out.println("기관수정 시작~!!");

		return adminServ.modifyHospitalServ(tbHospital);
	}
}

