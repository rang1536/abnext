package kr.or.abnext.chart;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.abnext.domain.ChartView1;

@Repository
public class ChartDao {
	@Autowired
	private SqlSessionTemplate sql;

	public List<ChartView1> getBasicChartList(ChartView1 chartView){
		return sql.selectList("chart.getBasicChartList", chartView);
	}

	//getBasicChartList2
	public List<ChartView1> getBasicChart2List(ChartView1 chartView){
		return sql.selectList("chart.getBasicChartList2", chartView);
	}
}
