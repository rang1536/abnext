package kr.or.abnext.chart;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.or.abnext.admin.AdminService;
import kr.or.abnext.domain.ChartView1;
import kr.or.abnext.domain.SearchView;
import kr.or.abnext.domain.SickCdView;
import kr.or.abnext.domain.TbHospital;
import kr.or.abnext.domain.TbUser;

@RestController
public class ChartRestController {
	@Autowired
	private ChartService chartServ;

	@Autowired
	private AdminService adminServ;

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
		System.out.println("월별 진단명별통계 화면가기~!!");
		return chartServ.getBasicChartList5Serv(chartView);
	}

	@RequestMapping(value = "basicChartList6", method = RequestMethod.POST)
	public List<ChartView1> basicChartList6Ctrl(ChartView1 chartView, Model model) {
		System.out.println("혈청통계 화면가기~!!");
		return chartServ.getBasicChartList6Serv(chartView);
	}

	@RequestMapping(value = "basicChartList7", method = RequestMethod.POST)
	public List<ChartView1> basicChartList7Ctrl(ChartView1 chartView, Model model) {
		System.out.println("혈구통계 화면가기~!!");
		return chartServ.getBasicChartList7Serv(chartView);
	}

	@RequestMapping(value = "getSickCodeList", method = RequestMethod.POST)
	public List<SickCdView> getSickCodeListCtrl() {
		System.out.println("질병코드 화면가기~!!");
		return chartServ.getSickCdListServ();
	}


	@RequestMapping(value = "basicChartList8", method = RequestMethod.POST)
	public List<ChartView1> basicChartList8Ctrl(SearchView searchView) {
		System.out.println("칙몬통계 화면가기~!!");

		return chartServ.getBasicChartList8Serv(searchView);
	}


	@RequestMapping(value = "getDocList", method = RequestMethod.POST)
	public List<TbUser> getDocListCtrl(TbHospital tbHospital) {
		System.out.println("의사조회 화면가기~!!");

		return adminServ.getDoctorListServ(tbHospital);
	}

}
