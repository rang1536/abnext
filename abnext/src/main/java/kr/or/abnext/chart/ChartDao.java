package kr.or.abnext.chart;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.abnext.domain.ChartView1;
import kr.or.abnext.domain.SearchView;
import kr.or.abnext.domain.SickCdView;
import kr.or.abnext.domain.TbLocal;
import kr.or.abnext.domain.TbRcept;

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

	//getBasicChartList3
	public List<ChartView1> getBasicChart3List(ChartView1 chartView){
		return sql.selectList("chart.getBasicChartList3", chartView);
	}

	//getBasicChartList31
	public List<ChartView1> getBasicChart31List(ChartView1 chartView){
		return sql.selectList("chart.getBasicChartList31", chartView);
	}

	//getBasicChartList4
	public List<ChartView1> getBasicChart4List(ChartView1 chartView){
		return sql.selectList("chart.getBasicChartList4", chartView);
	}

	//getBasicChartList5
	public List<ChartView1> getBasicChart5List(ChartView1 chartView){
		return sql.selectList("chart.getBasicChartList5", chartView);
	}

	//getBasicChartList5
	public List<ChartView1> getBasicChart6List(ChartView1 chartView){
		return sql.selectList("chart.getBasicChartList6", chartView);
	}

	//getBasicChartList5
	public List<ChartView1> getBasicChart7List(ChartView1 chartView){
		return sql.selectList("chart.getBasicChartList7", chartView);
	}

	public List<ChartView1> getBasicChart8List(SearchView searchView){
		return sql.selectList("chart.getBasicChartList8", searchView);
	}

	public List<ChartView1> getBasicChart82List(Map<String, Object> map){
		return sql.selectList("chart.getBasicChartList82", map);
	}

	public List<TbRcept> getButlerList(){
		return sql.selectList("chart.getButlerList");
	}

	public List<TbLocal> getLocalList(){
		return sql.selectList("chart.getLocalList");
	}

	//getSickCdList
	public List<SickCdView> getSickCdList(Map<String, Object> param){
		return sql.selectList("chart.getSickCdList", param);
	}
}
