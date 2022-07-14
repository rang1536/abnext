package kr.or.abnext.payment;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.or.abnext.domain.TbInspection;
import kr.or.abnext.domain.TbRcept;

@RestController
public class PaymentRestController {

	@Autowired
	PaymentService paymentServ;

	private static final Logger logger = LoggerFactory.getLogger(PaymentRestController.class);

	@RequestMapping(value = "selectPaymentList", method = RequestMethod.POST)
	public List<TbRcept> selectPaymentList(TbRcept bean) {
		List<TbRcept> data = paymentServ.selectPaymentList(bean);
		return data;
	}

	@RequestMapping(value = "selectInspect", method = RequestMethod.POST)
	public TbInspection selectInspect(TbInspection bean) {
		return  paymentServ.selectInspect(bean);
	}

	@RequestMapping(value = "modifyPayment", method = RequestMethod.POST)
	public Map<String, Object> modifyPayment(TbRcept tbRcept) {

		for(int i=0; i<tbRcept.getInspList().size(); i++) {

			TbRcept bean = new TbRcept();
			bean.setPdlNo(tbRcept.getInspList().get(i).get("pdlNo").toString());
			paymentServ.modifyPayment(bean);
		}

		Map<String, Object> map = new HashMap<String,Object>();
		map.put("result", "ok");

		return map;
	}

}
