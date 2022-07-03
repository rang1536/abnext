package kr.or.abnext.board;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.or.abnext.domain.TbBoard;

@RestController
@SessionAttributes({"userInfo"})
public class BoardRestController {
	@Autowired
	private BoardService boardServ;


	@RequestMapping(value = "addBoardCtrl", method = RequestMethod.POST)
	public Map<String, Object> addBoardCtrl(TbBoard tbBoard) {
		System.out.println("공지등록 ~!!");

		return boardServ.addBoardServ(tbBoard);
	}


	@RequestMapping(value = "modifyBoardCtrl", method = RequestMethod.POST)
	public Map<String, Object> modifyBoardCtrl(TbBoard tbBoard) {
		System.out.println("공지수정 ~!!");

		return boardServ.modifyBoardServ(tbBoard);
	}


}
