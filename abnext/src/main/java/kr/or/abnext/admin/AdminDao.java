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
	
	public List<TbCode> codeList(){
		return sql.selectList("code.codeList");
	}
}
