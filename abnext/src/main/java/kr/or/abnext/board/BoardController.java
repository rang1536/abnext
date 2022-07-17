package kr.or.abnext.board;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.or.abnext.domain.TbBoard;
import kr.or.abnext.domain.TbUser;

@SessionAttributes({"userInfo"})
@Controller
public class BoardController {
	@Autowired
	private BoardService boardServ;

	@RequestMapping(value = "boardList", method = RequestMethod.GET)
	public String boardListCtrl(Model model) {
		System.out.println("공지사항 화면가기~!!");

		//model.addAttribute("boardList", boardServ.getBoardListServ());
		return "board/boardList";
	}

	@RequestMapping(value = "addBoardPage", method = RequestMethod.GET)
	public String addBoardPageCtrl(Model model) {
		System.out.println("공지등록 화면가기~!!");

		return "board/add_board";
	}

	@RequestMapping(value = "modifyBoard", method = RequestMethod.GET)
	public String modifyBoardCtrl(Model model, @RequestParam(value="modifyBoardNo") String boardNo) {
		System.out.println("공지등록 화면가기~!!");
		TbBoard tbBoard = new TbBoard();
		tbBoard.setBoardNo(Integer.parseInt(boardNo));

		model.addAttribute("board", boardServ.getBoardListServ(tbBoard));
		return "board/modify_board";
	}


	@RequestMapping(value = "boardDetail", method = RequestMethod.GET)
	public String boardDetailCtrl(Model model, @RequestParam(value="boardNo") String boardNo) {
		System.out.println("공지상세보기 화면가기~!!");
		TbBoard tbBoard = new TbBoard();
		tbBoard.setBoardNo(Integer.parseInt(boardNo));

		model.addAttribute("board", boardServ.getBoardListServ(tbBoard));
		return "board/board_detail";
	}
}
