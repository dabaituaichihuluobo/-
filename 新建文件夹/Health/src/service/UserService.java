package service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.User;

public interface UserService {
	public User getByUsername(String username);

	public int addUser(int type, String username, String password, String name);

	public int updateUser(int type, String username, String password, String name, int status, int uid);
	public List<User> getAllUser();
	public int deleteUser(int uid);
	public User getById(int uid);
}
