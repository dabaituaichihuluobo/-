package service;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.Course;

public interface CourseService {
	
	public List<Course> getAll();
	
	public List<Course> dqgetAll();
	
	public Course getById(int id);
	
	public int deleteCourse(int id);
	
	public int addClass(int vipnum,int buyclass,String classes,int cid,Date orderdate);
	
	public int updateCourseById( Date orderdate,  int id,   String classes, int cid, int buyclass, int overclass, int residue);
	
}
