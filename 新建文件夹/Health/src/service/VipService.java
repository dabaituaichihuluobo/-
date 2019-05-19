package service;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.Vip;

public interface VipService {
	public Vip getById(int id);

	public List<Vip> getAll();

	public int getMaxVipnum();

	public int addNewVip(Date joindate, int age, String sex, String phone, String viplength, int uid, String note,
			String name, int vipnum, String expire);

	public int updateVipByVipnum(int age, int sex, String phone, int viplength, int uid, String note, String name,
			int vipnum);

	public int deleteVip(int vid);

	public Vip getByVipnum(int vipnum);
}
