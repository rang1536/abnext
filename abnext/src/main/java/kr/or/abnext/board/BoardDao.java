package kr.or.abnext.board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.abnext.domain.TbBoard;

@Repository
public class BoardDao {
	@Autowired
	private SqlSessionTemplate sql;

	/*공지목록조회*/
	public List<TbBoard> getBoardList(){
		return sql.selectList("board.getBoardList");
	}

}
