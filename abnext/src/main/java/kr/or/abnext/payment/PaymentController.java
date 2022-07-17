package kr.or.abnext.payment;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.or.abnext.admin.AdminService;
import kr.or.abnext.domain.TbRcept;
import kr.or.abnext.inspect.InspectService;

@Controller
public class PaymentController {

	@Autowired
	InspectService insServ;

	@Autowired
	PaymentService payServ;

	@Autowired
	AdminService admServ;

	private static final Logger logger = LoggerFactory.getLogger(PaymentController.class);

	@RequestMapping(value = "payList", method = RequestMethod.GET)
	public String requestInspect(Locale locale, Model model, String page) {
		logger.info("payList Method is start {}.", locale);


		Calendar cal = Calendar.getInstance();
		System.out.println();

		TbRcept bean = new TbRcept();
		Date now = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy.MM", Locale.KOREA);
		String strt = df.format(now)+".01";
		String fnsh = df.format(now)+"."+cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		bean.setSearchStrtDt(strt);
		bean.setSearchFnshDt(fnsh);
		List<TbRcept> list = payServ.selectPaymentList(bean);
		model.addAttribute("rceptList", list);
		model.addAttribute("strt", strt);
		model.addAttribute("fnsh", fnsh);
		return "payment/payList";
	}

}
