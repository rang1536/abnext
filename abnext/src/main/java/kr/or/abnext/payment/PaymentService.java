package kr.or.abnext.payment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.abnext.domain.TbInspection;
import kr.or.abnext.domain.TbRcept;

@Service
public class PaymentService {
	@Autowired
	private PaymentDao paymentDao;

	public List<TbRcept> selectPaymentList(TbRcept bean){
		return paymentDao.selectPaymentList(bean);
	}

	public TbInspection selectInspect(TbInspection bean){
		return paymentDao.selectInspect(bean);
	}

	public void modifyPayment(TbRcept bean) {
		paymentDao.modifyPayment(bean);
	}

}
