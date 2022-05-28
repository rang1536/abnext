package kr.or.abnext.chart;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ChartDao {
	@Autowired
	private SqlSessionTemplate sql;
	
}
