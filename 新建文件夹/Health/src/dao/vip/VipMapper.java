package dao.vip;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.Vip;

public interface VipMapper {
	public List<Vip> getAll();

	public int getMaxVipnum();

	public int addNewVip(Date joindate, @Param("age") int age, @Param("sex") String sex, @Param("phone") String phone,
			@Param("viplength") String viplength, @Param("uid") int uid, @Param("note") String note,
			@Param("name") String name, @Param("vipnum") int vipnum, @Param("expire") String expire);

	public int updateVipByVipnum(@Param("age") int age, @Param("sex") int sex, @Param("phone") String phone,
			@Param("viplength") int viplength, @Param("uid") int uid, @Param("note") String note,
			@Param("name") String name, @Param("vipnum") int vipnum);

	public Vip getById(int vid);

	public int deleteVip(int vid);

	public Vip getByVipnum(int vipnum);
}
