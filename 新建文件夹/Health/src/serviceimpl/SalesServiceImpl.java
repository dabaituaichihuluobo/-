package serviceimpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.sales.SalesMapper;
import entity.Sales;
import service.SalesService;
@Service
public class SalesServiceImpl implements SalesService {
	
	@Resource
	private SalesMapper mapper;
	
	
	@Override
	public List<Sales> getAll() {
		return mapper.getAll();
	}

	@Override
	public Sales getById(int id) {
		return mapper.getById( id);
	}

}
