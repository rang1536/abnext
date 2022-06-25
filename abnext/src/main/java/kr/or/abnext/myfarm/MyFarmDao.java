package kr.or.abnext.myfarm;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.abnext.domain.MyFarm;

@Repository
public class MyFarmDao {
	@Autowired
	private SqlSessionTemplate sql;

	public MyFarm getDataYear(MyFarm bean) {
		return sql.selectOne("myFarm.getDataYear", bean);
	}

	public List<MyFarm> getDataMonth(MyFarm bean) {
		return sql.selectList("myFarm.getDataMonth", bean);
	}
}
