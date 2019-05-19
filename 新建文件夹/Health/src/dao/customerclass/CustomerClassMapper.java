package dao.customerclass;

import java.util.List;

import entity.CustomerClass;

public interface CustomerClassMapper {
	
	public List<CustomerClass> getIntentionclass(int i);
	
	public int deleteClass(int ccid);

}
