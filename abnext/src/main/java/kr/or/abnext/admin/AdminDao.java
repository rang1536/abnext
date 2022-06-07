package kr.or.abnext.admin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.abnext.domain.TbCode;

@Repository
public class AdminDao {
	@Autowired
	private SqlSessionTemplate sql;
	
	public List<TbCode> codeList(TbCode tbCode){
		return sql.selectList("code.codeList", tbCode);
	}
	
	public int insertCode(TbCode tbCode){
		return sql.insert("code.insertCode", tbCode);
	}
	
	public int updateCode(TbCode tbCode){
		return sql.update("code.updateCode", tbCode);
	}
	
	public int getCodeLevel(TbCode tbCode){
		TbCode tc = sql.selectOne("code.getCodeLevel", tbCode);
		int codeLevel = 0;
		if(tc != null) {
			codeLevel = tc.getCodeLevel();
		}
		return codeLevel;
	}
	
	public int dupChk(TbCode tbCode){
		int a = sql.selectOne("code.dupChk", tbCode);
		return a;
	}
	
	public int deleteCode(TbCode tbCode){
		return sql.delete("code.deleteCode", tbCode);
	}
}
