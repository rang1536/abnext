package kr.or.abnext.payment;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.abnext.domain.TbRcept;

@Repository
public class PaymentDao {
	@Autowired
	private SqlSessionTemplate sql;

	public List<TbRcept> selectPaymentList(TbRcept bean){
		return sql.selectList("inspection.selectPaymentList", bean);
	}

}
