package kr.or.abnext.myfarm;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.abnext.domain.MyFarm;

@Service
public class MyFarmService {
	@Autowired
	private MyFarmDao myFarmDao;

	public MyFarm getDataYear(MyFarm bean){
		return myFarmDao.getDataYear(bean);
	}

}
