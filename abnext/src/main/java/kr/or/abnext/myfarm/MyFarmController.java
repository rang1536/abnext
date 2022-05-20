package kr.or.abnext.myfarm;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyFarmController {
	
	@Autowired
	MyFarmService myFarmServ;
	
	private static final Logger logger = LoggerFactory.getLogger(MyFarmController.class);
	
	@RequestMapping(value = "myFarm" , method = RequestMethod.GET)
	public String myFarm(Locale locale, Model model) {
		logger.info("MyFarm Method is start {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "myFarm/myFarm";
	}
}
