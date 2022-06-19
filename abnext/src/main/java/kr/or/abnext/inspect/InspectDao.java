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

	public List<TbRcept> rceptList(String[] arr){
		return sql.selectList("inspection.selectRceptList", arr);
	}

	public TbRcept getRcept(TbRcept rcept) {
		return sql.selectOne("inspection.getTbRcept", rcept);
	}

	public TbAnimal getAnimal(TbAnimal anim) {
		return sql.selectOne("inspection.getAnimal", anim);
	}

	public TbUser getUser(TbUser user) {
		return sql.selectOne("inspection.getUser", user);
	}

	public int duplAnimChk(TbAnimal anim) {
		return sql.selectOne("inspection.duplAnimChk", anim);
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

	public int insertAnimal(TbAnimal anim) {
		return sql.insert("inspection.insertAnimal", anim);
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

	public int updateInspectStatus(TbRcept rcpt) {
		return sql.insert("inspection.updateInspectStatus", rcpt);
	}

	public int updateSampleStatus(TbSample smpl) {
		return sql.insert("inspection.updateSampleStatus", smpl);
	}

	public int updateInspect(TbInspection insp) {
		return sql.insert("inspection.updateInspect", insp);
	}
}
