package kr.or.abnext.chart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.or.abnext.domain.ChartView1;

@Controller
public class ChartController {
	@Autowired
	private ChartService ChartServ;

	//basicChart
	@RequestMapping(value = "basicChart", method = RequestMethod.GET)
	public String basicChartCtrl(Model model) {
		System.out.println("기본통계 화면가기~!!");

		//model.addAttribute("chartList", ChartServ.getBasicChartListServ(chartView));
		return "chart/basic_chart";
	}

	//basicChart
	@RequestMapping(value = "basicChart2", method = RequestMethod.GET)
	public String basicChart2Ctrl(Model model) {
		System.out.println("기본통계 화면가기~!!");

		//model.addAttribute("boardList", boardServ.getBoardListServ());
		return "chart/basic_chart2";
	}

	//basicChart
	@RequestMapping(value = "basicChart3", method = RequestMethod.GET)
	public String basicChart3Ctrl(Model model) {
		System.out.println("기본통계 화면가기~!!");

		//model.addAttribute("boardList", boardServ.getBoardListServ());
		return "chart/basic_chart3";
	}

	//basicChart
	@RequestMapping(value = "basicChart4", method = RequestMethod.GET)
	public String basicChart4Ctrl(Model model) {
		System.out.println("진단명별 화면가기~!!");

		//model.addAttribute("boardList", boardServ.getBoardListServ());
		return "chart/basic_chart4";
	}

	//basicChart
	@RequestMapping(value = "basicChart5", method = RequestMethod.GET)
	public String basicChart5Ctrl(Model model) {
		System.out.println("기본통계 화면가기~!!");

		//model.addAttribute("boardList", boardServ.getBoardListServ());
		return "chart/basic_chart5";
	}

	//basicChart
	@RequestMapping(value = "basicChart6", method = RequestMethod.GET)
	public String basicChart6Ctrl(Model model) {
		System.out.println("기본통계 화면가기~!!");

		//model.addAttribute("boardList", boardServ.getBoardListServ());
		return "chart/basic_chart6";
	}

	//basicChart
	@RequestMapping(value = "basicChart7", method = RequestMethod.GET)
	public String basicChart7Ctrl(Model model) {
		System.out.println("기본통계 화면가기~!!");

		//model.addAttribute("boardList", boardServ.getBoardListServ());
		return "chart/basic_chart7";
	}

	//basicChart
	@RequestMapping(value = "basicChart8", method = RequestMethod.GET)
	public String basicChart8Ctrl(Model model) {
		System.out.println("기본통계 화면가기~!!");

		//model.addAttribute("boardList", boardServ.getBoardListServ());
		return "chart/basic_chart8";
	}

	//basicChart
	@RequestMapping(value = "basicChart9", method = RequestMethod.GET)
	public String basicChart9Ctrl(Model model) {
		System.out.println("기본통계 화면가기~!!");

		//model.addAttribute("boardList", boardServ.getBoardListServ());
		return "chart/basic_chart9";
	}
}
