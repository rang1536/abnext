package kr.or.abnext.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.abnext.domain.TbCode;

@Service
public class AdminService {
	@Autowired
	private AdminDao adminDao;
	
	public List<TbCode> codeList(TbCode tbCode){
		return adminDao.codeList(tbCode);
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
}
