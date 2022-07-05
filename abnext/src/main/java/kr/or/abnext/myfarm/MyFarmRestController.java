package kr.or.abnext.myfarm;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.or.abnext.domain.MyFarm;

@RestController
public class MyFarmRestController {

	@Autowired
	MyFarmService myFarmServ;

	private static final Logger logger = LoggerFactory.getLogger(MyFarmRestController.class);

	/*
	 * 년별데이터
	 **/
	@RequestMapping(value = "getDataYear", method = RequestMethod.POST)
	public Map<String, Object> getDataYear(MyFarm searchBean) {

		MyFarm bean = myFarmServ.getDataYear(searchBean);
		Map<String, Object> map = new HashMap<String,Object>();
		map.put("myFarm", bean);

		return map;
	}

}
