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

	public MyFarm selectMonthlyData(MyFarm bean) {
		return sql.selectOne("myFarm.selectMonthlyData", bean);
	}

	public List<MyFarm> selectMonthlyDataAdm(MyFarm bean) {
		return sql.selectList("myFarm.selectMonthlyDataAdm", bean);
	}

	public List<MyFarm> selectMonthlyDataWorker(MyFarm bean) {
		return sql.selectList("myFarm.selectMonthlyDataWorker", bean);
	}
}
