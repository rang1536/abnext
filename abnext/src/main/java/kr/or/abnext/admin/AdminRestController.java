package kr.or.abnext.admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.or.abnext.domain.TbCode;
import kr.or.abnext.domain.TbUser;

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
		
		int dupCnt = adminServ.dupChk(tbCode);
		Map<String, Object> map = new HashMap<String, Object>();
		
		if(dupCnt > 0 && tbCode.getCodeNo() != 999999999) {
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
	
}
