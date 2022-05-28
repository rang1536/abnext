package kr.or.abnext.inspect;

import java.text.DateFormat;
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

import kr.or.abnext.domain.TbRcept;

@Controller
public class InspectController {
	
	@Autowired
	InspectService insServ;
	
	private static final Logger logger = LoggerFactory.getLogger(InspectController.class);
	
	@RequestMapping(value = "requestInspect")
	public String requestInspect(Locale locale, Model model) {
		logger.info("requestInspect Method is start {}.", locale);
		
		List<TbRcept> list = insServ.recptList();
		model.addAttribute("rceptList", list);
		
		return "inspect/requestInspect";
	}
	
	@RequestMapping(value = "modifyInspect")
	public String modifyInspect(Locale locale, Model model) {
		logger.info("modifyInspect Method is start {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "inspect/modifyInspect";
	}
	
	@RequestMapping(value = "registerInspect")
	public String registerInspect(Locale locale, Model model) {
		logger.info("registerInspect Method is start {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "inspect/registerInspect";
	}
	
	@RequestMapping(value = "registerInspectByAdmin")
	public String registerInspectByAdmin(Locale locale, Model model) {
		logger.info("registerInspect Method is start {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "inspect/registerInspect2";
	}
	
	@RequestMapping(value = "settingInspectList")
	public String settingInspectList(Locale locale, Model model) {
		logger.info("settingInspectList Method is start {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "inspect/settingInspectList";
	}
	
	@RequestMapping(value = "settingInspectModify")
	public String settingInspectModify(Locale locale, Model model) {
		logger.info("settingInspectModify Method is start {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "inspect/settingInspectModify";
	}

	@RequestMapping(value = "resultInspectList")
	public String resultInspectList(Locale locale, Model model) {
		logger.info("resultInspectList Method is start {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "inspect/resultInspectList";
	}
	
	@RequestMapping(value = "resultInspectModify")
	public String resultInspectModify(Locale locale, Model model) {
		logger.info("resultInspectModify Method is start {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "inspect/resultInspectModify";
	}
}
