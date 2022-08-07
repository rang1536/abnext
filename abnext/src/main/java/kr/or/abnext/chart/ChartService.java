package kr.or.abnext.chart;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.abnext.domain.ChartView1;
import kr.or.abnext.domain.SearchView;
import kr.or.abnext.domain.SickCdView;
import kr.or.abnext.domain.TbLocal;
import kr.or.abnext.domain.TbRcept;

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

	/*월별 진단명별통계*/
	public List<ChartView1> getBasicChartList5Serv(ChartView1 chartView){
		return chartDao.getBasicChart5List(chartView);
	}

	/*혈청검사통계*/
	public List<ChartView1> getBasicChartList6Serv(ChartView1 chartView){
		return chartDao.getBasicChart6List(chartView);
	}


	/*지역별 혈청검사통계(혈구)*/
	public List<ChartView1> getBasicChartList7Serv(ChartView1 chartView){
		return chartDao.getBasicChart7List(chartView);
	}

	public List<ChartView1> getBasicChartList8Serv(SearchView searchView){
		String sql = "";
		String bindVal = "";

		if(searchView.getSidoNo() != null) {
			bindVal = getStringList(searchView.getSidoNo());
			sql += " AND A.BUTLER_SIDO IN ("+bindVal+")";
		}

		if(searchView.getAnimThirdCd() != null) {
			bindVal = getStringList(searchView.getAnimThirdCd());
			sql += " AND A.ANIM_THIRD_CD IN ("+bindVal+")";
		}

		if(searchView.getCate4() != null) {
			bindVal = getStringList(searchView.getCate4());
			sql += " AND (B.INSP_THIRD_CD IN ("+bindVal+") OR B.INSP_SECOND_CD IN("+bindVal+"))";
		}

		if(searchView.getDiagCd() != null) {
			bindVal = getStringList(searchView.getDiagCd());
			sql += " AND A.DIAG_CD IN ("+bindVal+")";
		}

		searchView.setSql(sql);

		return chartDao.getBasicChart8List(searchView);
	}

	public String getStringList(String[] strList) {
		String retVal = "";

		for(int i=0; i<strList.length; i++) {
			if(i == 0) {
				retVal = "'"+strList[i]+"'";
			}else if(i > 0 ){
				retVal += ", '"+strList[i]+"'";
			}

		}
		return retVal;
	}


	public List<TbRcept> getButlerListServ(){
		return chartDao.getButlerList();
	}


	public List<TbLocal> getLocalListServ(){
		return chartDao.getLocalList();
	}

	//getSickCdList
	public List<SickCdView> getSickCdListServ(){
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("codeId", "B001-0_-__");

		return chartDao.getSickCdList(param);
	}
}
