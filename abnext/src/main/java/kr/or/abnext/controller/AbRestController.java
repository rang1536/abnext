package kr.or.abnext.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import kr.or.abnext.service.AbService;

@RestController
public class AbRestController {
	
	@Autowired
	AbService abServ;
}
