package kr.or.abnext.chart;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.abnext.domain.ChartView1;

@Service
public class ChartService {
	@Autowired
	private ChartDao chartDao;


	/*기본차트*/
	public List<ChartView1> getBasicChartListServ(ChartView1 chartView){
		return chartDao.getBasicChartList(chartView);
	}


	/*가검물차트*/
	public List<ChartView1> getBasicChartList2Serv(ChartView1 chartView){
		return chartDao.getBasicChart2List(chartView);
	}


	/*검사통계*/
	public Map<String, List<ChartView1>> getBasicChartList3Serv(ChartView1 chartView){
		Map<String, List<ChartView1>> map = new HashMap<String, List<ChartView1>>();
		map.put("monthData", chartDao.getBasicChart3List(chartView));
		map.put("dayData", chartDao.getBasicChart31List(chartView));
		return map;
	}

	/*진단명별통계*/
	public List<ChartView1> getBasicChartList4Serv(ChartView1 chartView){
		return chartDao.getBasicChart4List(chartView);
	}
}
