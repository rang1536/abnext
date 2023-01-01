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
import kr.or.abnext.domain.TbRcept;
import kr.or.abnext.payment.PaymentService;

@RestController
public class MyFarmRestController {

	@Autowired
	MyFarmService myFarmServ;

	@Autowired
	PaymentService payServ;

	private static final Logger logger = LoggerFactory.getLogger(MyFarmRestController.class);

	/*
	 * 고객 입력 데이터
	 **/
	@RequestMapping(value = "selectCustomerList", method = RequestMethod.POST)
	public List<TbRcept> selectCustomerList(TbRcept bean) {
		return payServ.selectPaymentList(bean);
	}

	@RequestMapping(value = "selectMonthlyData", method = RequestMethod.POST)
	public MyFarm selectMonthlyData(MyFarm bean) {
		return myFarmServ.selectMonthlyData(bean);
	}

	@RequestMapping(value = "getMyPageData", method = RequestMethod.POST)
	public MyFarm getMyPageData(MyFarm bean) {
		return myFarmServ.selectMonthlyData(bean);
	}

	@RequestMapping(value = "selectMonthlyDataAdm", method = RequestMethod.POST)
	public List<MyFarm> selectMonthlyDataAdm(MyFarm bean) {
		if(bean.getUserLev().equals("4")) {
			return myFarmServ.selectMonthlyDataAdm(bean);
		}else {
			return myFarmServ.selectMonthlyDataWorker(bean);
		}

	}


	@RequestMapping(value = "getRceptList", method = RequestMethod.POST)
	public List<MyFarm> getRceptList(MyFarm bean) {
		return myFarmServ.getRceptList(bean);
	}
}
