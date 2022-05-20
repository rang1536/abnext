package kr.or.abnext.inspect;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class InspectService {
	@Autowired
	private InspectDao inspectDao;
	
	
}
