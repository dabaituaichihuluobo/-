package service;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.Customer;

public interface CustomerService {
	public List<Customer> getIntention(int i);
	public int addCustomer( String age,  String name,  int sex,  String phone,
			 int intention,  int uid,  Date orderdate);

	public int updateCustomer(int cid , String age,  String name,  int sex,  String phone,
			 int intention,  int uid,  Date orderdate);
	public int deleteIntention(int cid);
}
