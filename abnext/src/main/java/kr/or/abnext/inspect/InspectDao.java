package kr.or.abnext.inspect;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class InspectDao {
	@Autowired
	private SqlSessionTemplate sql;
	
}
