package dao.course;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.Course;

public interface CourseMapper {
	
	public List<Course> getAll();
	
	public List<Course> dqgetAll();
	
	public Course getById(int id);
	
	public int deleteCourse(int id);
	
	public int addClass(@Param("vipnum") int vipnum,@Param("buyclass") int buyclass,@Param("classes")String classes,@Param("cid")int cid,@Param("orderdate") Date orderdate);
	
	public int updateCourseById(@Param("orderdate") Date orderdate, @Param("id")Integer id,  @Param("classes") String classes,@Param("cid") int cid,@Param("buyclass") int buyclass,@Param("overclass") int overclass,@Param("residue") int residue);
	
	

}
