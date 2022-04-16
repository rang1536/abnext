package kr.or.abnext.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AbDao {
	@Autowired
	private SqlSessionTemplate sql;
	
}
