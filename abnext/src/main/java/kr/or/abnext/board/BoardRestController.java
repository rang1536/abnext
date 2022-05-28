package kr.or.abnext.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BoardRestController {
	@Autowired
	private BoardService boardServ;
}
