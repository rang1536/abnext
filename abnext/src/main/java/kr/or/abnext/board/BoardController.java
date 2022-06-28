package kr.or.abnext.board;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController {
	@Autowired
	private BoardService boardServ;

	@RequestMapping(value = "boardList", method = RequestMethod.GET)
	public String boardListCtrl(Model model) {
		System.out.println("공지사항 화면가기~!!");

		return "board/boardList";
	}
}
