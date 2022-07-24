package kr.or.abnext.chart;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.or.abnext.domain.ChartView1;

@RestController
public class ChartRestController {
	@Autowired
	private ChartService chartServ;

	@RequestMapping(value = "basicChartList", method = RequestMethod.POST)
	public List<ChartView1> basicChartListCtrl(ChartView1 chartView, Model model) {
		System.out.println("기본통계 화면가기~!!");

		return chartServ.getBasicChartListServ(chartView);
	}

	@RequestMapping(value = "basicChartList2", method = RequestMethod.POST)
	public List<ChartView1> basicChartList2Ctrl(ChartView1 chartView, Model model) {
		System.out.println("가검물통계 화면가기~!!");

		return chartServ.getBasicChartList2Serv(chartView);
	}

	@RequestMapping(value = "basicChartList3", method = RequestMethod.POST)
	public Map<String, List<ChartView1>> basicChartList3Ctrl(ChartView1 chartView, Model model) {
		System.out.println("가검물통계 화면가기~!!");

		return chartServ.getBasicChartList3Serv(chartView);
	}

	@RequestMapping(value = "basicChartList4", method = RequestMethod.POST)
	public List<ChartView1> basicChartList4Ctrl(ChartView1 chartView, Model model) {
		System.out.println("진단명별통계 화면가기~!!");
		return chartServ.getBasicChartList4Serv(chartView);
	}

	@RequestMapping(value = "basicChartList5", method = RequestMethod.POST)
	public List<ChartView1> basicChartList5Ctrl(ChartView1 chartView, Model model) {
		System.out.println("진단명별통계 화면가기~!!");
		return chartServ.getBasicChartList5Serv(chartView);
	}

	@RequestMapping(value = "basicChartList6", method = RequestMethod.POST)
	public List<ChartView1> basicChartList6Ctrl(ChartView1 chartView, Model model) {
		System.out.println("진단명별통계 화면가기~!!");
		return chartServ.getBasicChartList6Serv(chartView);
	}
}
