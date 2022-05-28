package kr.or.abnext.chart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ChartService {
	@Autowired
	private ChartDao chartDao;
}
