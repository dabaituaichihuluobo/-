package serviceimpl;

import java.sql.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.vip.VipMapper;
import entity.Vip;
import service.VipService;

@Service
public class VipServiceImpl implements VipService {
	@Resource
	private VipMapper mapper;

	@Override
	public List<Vip> getAll() {
		return mapper.getAll();
	}

	@Override
	public int getMaxVipnum() {
		return mapper.getMaxVipnum();
	}

	@Override
	public int addNewVip(Date joindate, int age, String sex, String phone, String viplength, int uid, String note,
			String name, int vipnum, String expire) {
		return mapper.addNewVip(joindate, age, sex, phone, viplength, uid, note, name, vipnum, expire);
	}

	@Override
	public int updateVipByVipnum(int age, int sex, String phone, int viplength, int uid, String note, String name,
			int vipnum) {
		return mapper.updateVipByVipnum(age, sex, phone, viplength, uid, note, name, vipnum);
	}

	@Override
	public Vip getById(int id) {
		return mapper.getById(id);
	}

	@Override
	public int deleteVip(int vid) {
		return mapper.deleteVip(vid);
	}

	@Override
	public Vip getByVipnum(int vipnum) {
		return mapper.getByVipnum(vipnum);
	}

}
