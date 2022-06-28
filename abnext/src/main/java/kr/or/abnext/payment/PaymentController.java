package kr.or.abnext.payment;

import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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

	@RequestMapping(value = "payList")
	public String requestInspect(Locale locale, Model model, String page) {
		logger.info("payList Method is start {}.", locale);

		String [] arr = {"1","2","3","4","5"};
		List<TbRcept> list = insServ.recptList(arr);
		model.addAttribute("rceptList", list);

		return "payment/payList";
	}

}
