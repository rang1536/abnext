package kr.or.abnext.myfarm;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MyFarmService {
	@Autowired
	private MyFarmDao myFarmDao;
	
	
}
