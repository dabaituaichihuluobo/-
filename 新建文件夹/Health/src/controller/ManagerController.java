package controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.User;
import service.UserService;

@Controller
@RequestMapping("/manager")
public class ManagerController {
	
	@Resource()
	private UserService user;
	
	
	@RequestMapping("/addUser")
	public String addUser() {
		return "manager/adduser";
	}
	
	@RequestMapping("/addUser2")
	public String addUser2(String username,String name,String password,int type) {
	System.out.println(type+"  type");
		user.addUser(type, username, password, name);
	return "redirect:/manager/user";
	}
	@RequestMapping("/user")
	public String getAllUser(Model model) {
		List<User> userList=user.getAllUser();
		model.addAttribute("userList", userList);
		return "manager/alluser";
	}
	
	@RequestMapping("deleteUser")
	public String deleteUser(int uid) {
		user.deleteUser(uid);
		return "redirect:/manager/user";
	}
	@RequestMapping("updateUser")
	public String updateUser(int uid,Model model) {
		User u=user.getById(uid);
		model.addAttribute("u", u);
		return "manager/updateuser";
	}
	
	@RequestMapping("updateUser2")
	public String updateUser2(int uid,String username,String name,String password,int type) {
		user.updateUser(type, username, password, name, 1, uid);
		return "redirect:/manager/user";
	}
	
	
	
	
	
	
	
	
	
}
