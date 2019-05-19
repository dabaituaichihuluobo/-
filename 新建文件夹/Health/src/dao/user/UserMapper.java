package dao.user;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.User;

public interface UserMapper {
	public User getByUsername(String username);

	public int addUser(@Param("type") int type, @Param("username") String username, @Param("password") String password,
			@Param("name") String name);

	public int updateUser(@Param("type") int type, @Param("username") String username, @Param("password") String password,
			@Param("name") String name, @Param("status")int status, @Param("uid")int uid);

	public List<User> getAllUser();
	public int deleteUser(int uid);
	public User getById(int uid);
}
