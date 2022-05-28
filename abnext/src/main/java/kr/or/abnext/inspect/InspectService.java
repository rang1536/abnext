package kr.or.abnext.inspect;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.abnext.domain.TbRcept;

@Service
public class InspectService {
	@Autowired
	private InspectDao inspectDao;
	
	public List<TbRcept> recptList(){
		return inspectDao.rceptList();
	}
	
}
