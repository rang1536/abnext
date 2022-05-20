package kr.or.abnext.myfarm;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MyFarmRestController {
	
	@Autowired
	MyFarmService myFarmServ;
	
	private static final Logger logger = LoggerFactory.getLogger(MyFarmRestController.class);
	

}
