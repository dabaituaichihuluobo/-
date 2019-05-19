package dao.coach;

import java.util.List;

import entity.Coach;

public interface CoachMapper {
	
	public List<Coach> getAll();
	
	public Coach getById(int cid);

}
