package kr.or.abnext.chart;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.or.abnext.admin.AdminService;
import kr.or.abnext.domain.ChartView1;
import kr.or.abnext.domain.TbCode;

@Controller
public class ChartController {
	@Autowired
	private ChartService chartServ;

	@Autowired
	private AdminService adminServ;

	//basicChart
	@RequestMapping(value = "basicChart", method = RequestMethod.GET)
	public String basicChartCtrl(Model model) {
		System.out.println("기본통계 화면가기~!!");

		return "chart/basic_chart";
	}

	//basicChart
	@RequestMapping(value = "basicChart2", method = RequestMethod.GET)
	public String basicChart2Ctrl(Model model) {
		System.out.println("기본통계 화면가기~!!");

		return "chart/basic_chart2";
	}

	//basicChart
	@RequestMapping(value = "basicChart3", method = RequestMethod.GET)
	public String basicChart3Ctrl(Model model) {
		System.out.println("기본통계 화면가기~!!");

		return "chart/basic_chart3";
	}

	//basicChart
	@RequestMapping(value = "basicChart4", method = RequestMethod.GET)
	public String basicChart4Ctrl(Model model) {
		System.out.println("진단명별 화면가기~!!");

		return "chart/basic_chart4";
	}

	//basicChart
	@RequestMapping(value = "basicChart5", method = RequestMethod.GET)
	public String basicChart5Ctrl(Model model) {
		System.out.println("기본통계 화면가기~!!");

		return "chart/basic_chart5";
	}

	//basicChart
	@RequestMapping(value = "basicChart6", method = RequestMethod.GET)
	public String basicChart6Ctrl(Model model) {
		System.out.println("기본통계 화면가기~!!");

		return "chart/basic_chart6";
	}

	//basicChart
	@RequestMapping(value = "basicChart7", method = RequestMethod.GET)
	public String basicChart7Ctrl(Model model) {
		System.out.println("기본통계 화면가기~!!");

		return "chart/basic_chart7";
	}

	//basicChart
	@RequestMapping(value = "basicChart8", method = RequestMethod.GET)
	public String basicChart8Ctrl(Model model) {
		System.out.println("칙몬통계 화면가기~!!");

		model.addAttribute("hospList", adminServ.getHospListServ());
		model.addAttribute("buttlerList", chartServ.getButlerListServ());
		model.addAttribute("localList", chartServ.getLocalListServ());

		System.out.println("지역조회결과"+chartServ.getLocalListServ());
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("codeId", "C001-0_-0_-");
		model.addAttribute("animGbList", adminServ.getCodeListServ(param));

		return "chart/basic_chart8";
	}


}
