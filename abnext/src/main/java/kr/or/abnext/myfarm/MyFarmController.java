package kr.or.abnext.myfarm;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.or.abnext.domain.MyFarm;
import kr.or.abnext.domain.TbRcept;
import kr.or.abnext.domain.TbUser;
import kr.or.abnext.inspect.InspectService;
import kr.or.abnext.payment.PaymentService;

@Controller
@SessionAttributes({"userInfo"})
public class MyFarmController {

	@Autowired
	MyFarmService myFarmServ;

	@Autowired
	InspectService insServ;

	@Autowired
	PaymentService payServ;

	private static final Logger logger = LoggerFactory.getLogger(MyFarmController.class);

	@RequestMapping(value = "myFarm" , method = RequestMethod.GET)
	public String myFarm(Locale locale, Model model, MyFarm searchBean,
			@ModelAttribute("userInfo") TbUser userBean) {

		if(userBean == null) return "index";
		String lvl = userBean.getUserLev();
		//권한에 따라 사용자 화면과 관리자 화면으로 분리하여 리턴
		if(lvl.equals("1")) {
			if(searchBean == null) {
				Date now = new Date();
				SimpleDateFormat df = new SimpleDateFormat("yyyyMM", Locale.KOREA);
				searchBean = new MyFarm();
				searchBean.setSearchStr(df.format(now));
				searchBean.setInsId(userBean.getUserId());
			}

			MyFarm mfBean = myFarmServ.getDataYear(searchBean);
			model.addAttribute("ak01Yeardata",mfBean);

			TbRcept bean = new TbRcept();
			bean.setLimitCnt(5);
			bean.setInsId(userBean.getUserId());
			List<TbRcept> list = payServ.selectPaymentList(bean);
			model.addAttribute("rceptList", list);

			return "myFarm/myFarm";
		}else {
			Date now = new Date();
			SimpleDateFormat df = new SimpleDateFormat("yyyy", Locale.KOREA);
			searchBean.setSearchStr(df.format(now));
			MyFarm mfBean = myFarmServ.getDataYear(searchBean);
			model.addAttribute("ak01Yeardata",mfBean);

			//return "myFarm/myFarm";
			return "myFarm/myFarm2";
		}
	}
}
