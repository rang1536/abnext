package kr.or.abnext.board;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class BoardController {
	@Autowired
	private BoardService boardServ;
}
