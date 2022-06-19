package kr.or.abnext.inspect;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.abnext.domain.TbAnimal;
import kr.or.abnext.domain.TbCode;
import kr.or.abnext.domain.TbHospital;
import kr.or.abnext.domain.TbInspection;
import kr.or.abnext.domain.TbRcept;
import kr.or.abnext.domain.TbSample;
import kr.or.abnext.domain.TbUser;

@Repository
public class InspectDao {
	@Autowired
	private SqlSessionTemplate sql;

	public List<TbRcept> rceptList(){
		return sql.selectList("inspection.selectRceptList");
/*
		List<TbRcept> list = new ArrayList<TbRcept>();
		for(int i=0; i<20; i++) {
			TbRcept r = new TbRcept();
			r.setRqstNo(i);
			r.setProcStatNm("신청");
			if(i%2 == 0) {
				r.setHospNm("달마병원");
				r.setAnimNm("망고");
				r.setDocNm("나수의");
				r.setPrice("30000");
			}else {
				r.setHospNm("예수병원");
				r.setAnimNm("검둥이");
				r.setDocNm("최수의");
				r.setPrice("70000");
			}
			if(i<5) r.setRqstDt("2022.02.22");
			if(i>4 && i<10) r.setRqstDt("2022.03.03");
			if(i>9 && i<15) r.setRqstDt("2022.03.20");
			if(i>14) r.setRqstDt("2022.04.05");
			list.add(r);
		}
		return list;
*/
	}

	public TbRcept getRcept(TbRcept rcept) {
		return sql.selectOne("inspection.getTbRcept", rcept);
	}

	public TbHospital getHospital(int hospNo) {
		return sql.selectOne("inspection.getTbHospital", hospNo);
	}

	public TbAnimal getAnimal(int animNo) {
		return sql.selectOne("inspection.getAnimal", animNo);
	}

	public String getNextKey() {
		return sql.selectOne("inspection.getNextKey");
	}

	public int insertRcept(TbRcept rcept) {
		return sql.insert("inspection.insertRcept", rcept);
	}

	public int insertInspection(TbInspection insp) {
		return sql.insert("inspection.insertInspection", insp);
	}

	public int insertSample(TbSample smpl) {
		return sql.insert("inspection.insertSample", smpl);
	}

	public List<TbUser> selectDoctorList(TbUser tbUser){
		return sql.selectList("inspection.selectDoctorList", tbUser);
	}

	public List<TbInspection> selectInspList(TbInspection tbInspection){
		return sql.selectList("inspection.selectInspList", tbInspection);
	}

	public List<TbSample> selectSampleList(TbSample tbSample){
		return sql.selectList("inspection.selectSampleList", tbSample);
	}
}
