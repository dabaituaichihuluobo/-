package serviceimpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.customerclass.CustomerClassMapper;
import entity.CustomerClass;
import service.CustomerClassService;
@Service
public class CustomerClassServiceImpl implements CustomerClassService{
	
	@Resource
	private CustomerClassMapper mapper;

	@Override
	public List<CustomerClass> getIntentionclass(int i) {
		return mapper.getIntentionclass(i);
	}

	@Override
	public int deleteClass(int ccid) {
		return mapper.deleteClass(ccid);
	}

}
