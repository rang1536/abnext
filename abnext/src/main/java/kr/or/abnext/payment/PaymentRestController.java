package kr.or.abnext.payment;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.or.abnext.domain.TbRcept;

@RestController
public class PaymentRestController {

	@Autowired
	PaymentService paymentServ;

	private static final Logger logger = LoggerFactory.getLogger(PaymentRestController.class);

	@RequestMapping(value = "selectPaymentList", method = RequestMethod.POST)
	public List<TbRcept> selectDoctorList(TbRcept bean) {
		List<TbRcept> data = paymentServ.selectPaymentList(bean);
		return data;
	}


}
