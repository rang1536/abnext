package kr.or.abnext.payment;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.abnext.domain.TbInspection;
import kr.or.abnext.domain.TbRcept;

@Repository
public class PaymentDao {
	@Autowired
	private SqlSessionTemplate sql;

	public List<TbRcept> selectPaymentList(TbRcept bean){
		return sql.selectList("inspection.selectPaymentList", bean);
	}

	public TbInspection selectInspect(TbInspection bean){
		return sql.selectOne("inspection.selectInspect", bean);
	}

	public void modifyPayment(TbRcept bean){
		sql.update("inspection.modifyPayment", bean);
	}
}
