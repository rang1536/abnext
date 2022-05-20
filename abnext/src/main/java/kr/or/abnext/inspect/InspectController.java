package kr.or.abnext.inspect;

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
public class InspectController {
	
	@Autowired
	InspectService myFarmServ;
	
	private static final Logger logger = LoggerFactory.getLogger(InspectController.class);
	
	@RequestMapping(value = "requestInspect" , method = RequestMethod.GET)
	public String requestInspect(Locale locale, Model model) {
		logger.info("MyFarm Method is start {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "inspect/requestInspect";
	}
	
}
