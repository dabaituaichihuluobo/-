package serviceimpl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.customer.CustomerMapper;
import entity.Customer;
import service.CustomerService;

@Service
public class CustomerServiceImpl implements CustomerService {
	@Resource
	private CustomerMapper mapper;

	@Override
	public List<Customer> getIntention(int i) {
		return mapper.getIntention(i);
	}

	@Override
	public int addCustomer(String age, String name, int sex, String phone, int intention, int uid, Date orderdate) {
		return mapper.addCustomer(age, name, sex, phone, intention, uid, orderdate);
	}

	@Override
	public int updateCustomer(int cid, String age, String name, int sex, String phone, int intention, int uid,
			Date orderdate) {
		return mapper.updateCustomer(cid, age, name, sex, phone, intention, uid, orderdate);
	}

	@Override
	public int deleteIntention(int cid) {
		return mapper.deleteIntention(cid);
	}

}
