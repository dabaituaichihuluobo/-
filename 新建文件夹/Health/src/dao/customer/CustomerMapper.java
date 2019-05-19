package dao.customer;


import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.Customer;

public interface CustomerMapper {
	public List<Customer> getIntention(int i);

	public int addCustomer(@Param("age") String age, @Param("name") String name, @Param("sex") int sex, @Param("phone") String phone,
			@Param("intention") int intention, @Param("uid") int uid, @Param("orderdate") Date orderdate);

	public int updateCustomer(@Param("cid") int cid ,@Param("age") String age, @Param("name") String name, @Param("sex") int sex, @Param("phone") String phone,
			@Param("intention") int intention, @Param("uid") int uid, @Param("orderdate") Date orderdate);

	public int deleteIntention(int cid);
}
