package kr.or.abnext.payment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.abnext.domain.TbRcept;

@Service
public class PaymentService {
	@Autowired
	private PaymentDao paymentDao;

	public List<TbRcept> selectPaymentList(TbRcept bean){
		return paymentDao.selectPaymentList(bean);
	}

}
