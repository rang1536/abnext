package kr.or.abnext.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.abnext.domain.TbCode;

@Service
public class AdminService {
	@Autowired
	private AdminDao adminDao;
	
	public List<TbCode> codeList(){
		return adminDao.codeList();
	}
}
