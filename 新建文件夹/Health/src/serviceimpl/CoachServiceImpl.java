package serviceimpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.coach.CoachMapper;
import entity.Coach;
import service.CoachService;

@Service
public class CoachServiceImpl implements CoachService{
	
	@Resource
	private CoachMapper mapper;

	@Override
	public List<Coach> getAll() {
		return mapper.getAll();
	}

	

}
