package kr.or.abnext.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.abnext.domain.TbBoard;

@Service
public class BoardService {
	@Autowired
	private BoardDao boardDao;

	/**
	 * @function : getResultMap
	 * @Description : 결과값 succ / fail 반환 공통함수
	 * @param : int
	 **/
	public Map<String, Object> getResultMap(int result){
		Map<String, Object> map = new HashMap<String, Object>();

		if(result == 1) {
			map.put("result", "succ");
		}else {
			map.put("result", "fail");
		}
		return map;
	}

	public List<TbBoard> getBoardListServ(){
		return boardDao.getBoardList();
	}

	public TbBoard getBoardListServ(TbBoard tbBoard){
		return boardDao.getBoardList(tbBoard);
	}


	public Map<String, Object> addBoardServ(TbBoard tbBoard){
		return getResultMap(boardDao.addBoard(tbBoard));
	}

	/*공지수정*/
	public Map<String, Object> modifyBoardServ(TbBoard tbBoard){
		return getResultMap(boardDao.modifyBoard(tbBoard));
	}
}
