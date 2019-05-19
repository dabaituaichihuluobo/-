package service;

import java.util.List;

import entity.CustomerClass;

public interface CustomerClassService {
	
	public List<CustomerClass> getIntentionclass(int i);
	
	
	public int deleteClass(int ccid);

}
