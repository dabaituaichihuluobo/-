package serviceimpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.user.UserMapper;
import entity.User;
import service.UserService;

@Service
public class UserServiceImpl implements UserService {
	@Resource
	private UserMapper mapper;

	@Override
	public User getByUsername(String username) {
		return mapper.getByUsername(username);
	}

	@Override
	public int addUser(int type, String username, String password, String name) {

		return mapper.addUser(type, username, password, name);
	}

	@Override
	public int updateUser(int type, String username, String password, String name, int status, int uid) {

		return mapper.updateUser(type, username, password, name, status, uid);
	}

	@Override
	public List<User> getAllUser() {
		return mapper.getAllUser();
	}

	@Override
	public int deleteUser(int uid) {
		return mapper.deleteUser(uid);
	}

	@Override
	public User getById(int uid) {
		return mapper.getById(uid);
	}

}
