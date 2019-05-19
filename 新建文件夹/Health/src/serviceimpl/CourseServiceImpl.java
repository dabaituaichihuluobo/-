package serviceimpl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.course.CourseMapper;
import entity.Course;
import service.CourseService;

@Service
public class CourseServiceImpl implements CourseService {

	@Resource
	private CourseMapper mapper;

	@Override
	public List<Course> getAll() {
		return mapper.getAll();
	}

	@Override
	public Course getById(int id) {
		return mapper.getById(id);
	}

	@Override
	public int deleteCourse(int id) {
		return mapper.deleteCourse(id);
	}

	@Override
	public int updateCourseById(Date orderdate, int id, String classes, int cid, int buyclass, int overclass,
			int residue) {
		return mapper.updateCourseById(orderdate, id, classes, cid, buyclass, overclass, residue);
	}

	@Override
	public List<Course> dqgetAll() {
		return mapper.dqgetAll();
	}

	@Override
	public int addClass(int vipnum, int buyclass, String classes, int cid, Date orderdate) {
		return mapper.addClass(vipnum, buyclass, classes, cid, orderdate);
	}

}
