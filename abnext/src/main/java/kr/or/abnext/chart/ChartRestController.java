package kr.or.abnext.chart;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ChartRestController {
	@Autowired
	private ChartService chartServ;
}
