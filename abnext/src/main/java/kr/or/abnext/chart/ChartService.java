package kr.or.abnext.chart;

import java.util.List;

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


}
