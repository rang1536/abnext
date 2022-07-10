package kr.or.abnext;

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

import kr.or.abnext.admin.AdminService;
import kr.or.abnext.board.BoardService;
import kr.or.abnext.domain.TbMenu;
import kr.or.abnext.domain.TbUser;

@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	AdminService adminServ;

	@Autowired
	BoardService boardServ;


	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		System.out.println("시작~!!");

		model.addAttribute("boardList", boardServ.getBoardListServ());

		return "index";
	}

	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String index(Model model) {
		System.out.println("시작~!!");

		model.addAttribute("boardList", boardServ.getBoardListServ());
		return "index";
	}
}
