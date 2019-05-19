package controller;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.User;
import service.UserService;
import serviceimpl.UserServiceImpl;

@Controller
public class LoginController {
	@Resource
	private UserService service;
	
	@RequestMapping("/login")
	public String login() {
		System.out.println(123456);
		return "login";
	}
	
	@RequestMapping("/index")
	public String Login(String username,String password
			,Model model) {
		if(username!=null&&password!=null) {
			User user=service.getByUsername(username);
			if(user!=null&&user.getPassword().equals(password)) {
				 model.addAttribute("user", user);
				return "index";
			}
		}
		return "error";
	}
	
	
}
