package kr.or.abnext.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.abnext.dao.AbDao;

@Service
public class AbService {
	@Autowired
	private AbDao abDao;
	
	
}
