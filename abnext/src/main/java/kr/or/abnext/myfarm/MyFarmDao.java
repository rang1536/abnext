package kr.or.abnext.myfarm;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MyFarmDao {
	@Autowired
	private SqlSessionTemplate sql;
	
}
