package controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;

import entity.Coach;
import entity.Course;
import entity.CustomerClass;
import entity.Vip;
import service.CoachService;
import service.CourseService;
import service.CustomerClassService;
import service.VipService;

@Controller
@RequestMapping("/coach")
public class CoachController {
	org.mybatis.spring.mapper.MapperScannerConfigurer a;
	
	@Resource
	private CourseService cser;
	@Resource
	private CoachService cse;
	@Resource
	private CustomerClassService ccs;
	@Resource
	private VipService vser;
	
	@RequestMapping("/buyClass")
	public String buyClass(Model model) {
		List<Course> courseList=cser.getAll();
		model.addAttribute("courseList", courseList);
		return "coach/buyClass";
	}
	@RequestMapping("/intention")
	public String getIntentionclass(Model model) {
		List<CustomerClass> cList=ccs.getIntentionclass(1);
		model.addAttribute("cList", cList);
		return "coach/intention";
	}
	@RequestMapping("/tice")
	public String tice(Model model) {
		List<CustomerClass> tcList=ccs.getIntentionclass(2);
		model.addAttribute("tcList", tcList);
		return "coach/tice";
	}
	@RequestMapping("/day")
	public String day() {
		System.out.println("day");
		return "coach/day";
	}
	@RequestMapping("/addclass")
	public String addclass(Model model) {
		List<Coach> coachList=cse.getAll();
		model.addAttribute("coachList", coachList);
		return "coach/addclass";
	}
	@RequestMapping("/addclass2")
	public String addclass(int vipnum,int buyclass,String classes,int cid,Date orderdate) {
		cser.addClass(vipnum, buyclass, classes, cid, orderdate);
		return "redirect:/coach/buyClass";
	}
	@RequestMapping("/week")
	public String week() {
		System.out.println("week");
		return "coach/week";
	}
	@RequestMapping("/month")
	public String month() {
		System.out.println("month");
		return "coach/month";
	}
	@RequestMapping("/expiredate")
	public String expiredate(Model model) {
		List<Course> courseList=cser.dqgetAll();
		model.addAttribute(courseList);
		return "coach/expiredate";
	}
	@RequestMapping("/updateclass")
	public String updateClass(int id,Model model) {
		Course course=cser.getById(id);
		List<Coach> coachList= cse.getAll();
		model.addAttribute("course", course);
		model.addAttribute("coachList", coachList);
		return "coach/updateclass";
	}
	@RequestMapping("/updateclass2")
	public String updateClass2(Model model,String orderdate,int id, String classes,int cid,int buyclass,int overclass,int residue) throws ParseException {
		SimpleDateFormat  sf=new SimpleDateFormat("yyyy-MM-dd");
		Date order=sf.parse(orderdate);
		cser.updateCourseById(order, id, classes, cid, buyclass, overclass, residue);	
		return "redirect:/coach/buyClass";
	}
	@RequestMapping("/deleteCourse")
	public String deleteCourse(int id) {
		cser.deleteCourse(id);
		return "redirect:/coach/buyClass";
	}
	@RequestMapping("/deleteClass")
	public String deleteClass(int ccid) {
		ccs.deleteClass(ccid);
		return "redirect:/coach/intention";
	}
	@RequestMapping("deleteTice")
	public String delete(int ccid) {
		ccs.deleteClass(ccid);
		return "redirect:/coach/tice";
	}
	@RequestMapping(value="/getVip",produces = "text/json;charset=UTF-8")
	@ResponseBody
	public Object getVipByVipnum(@RequestBody String vipnumstr) {
		int vipnum=Integer.parseInt(vipnumstr);
		Vip v=vser.getByVipnum(vipnum);
		if(v==null) {
			return JSONObject.toJSONString("no");
		}
		
		String name=v.getName();
		String name2=JSONObject.toJSONString(name);
		return name2;
	}
	
	
}
