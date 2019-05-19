package controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.filefilter.FileFilterUtils;
import org.apache.commons.lang.reflect.FieldUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import dao.sales.SalesMapper;
import entity.Customer;
import entity.Sales;
import entity.Vip;
import service.CustomerService;
import service.VipService;
import serviceimpl.SalesServiceImpl;

@Controller
@RequestMapping("/members")
public class MembersController {

	@Resource
	private VipService vser;

	@Resource
	private CustomerService cser;

	@Resource
	private SalesServiceImpl sser;

	@RequestMapping("/vip")
	public String getAllVip(Model model) {
		List<Vip> vipList = vser.getAll();
		model.addAttribute("vipList", vipList);
		return "vip";
	}

	@RequestMapping("/intention")
	public String getIntention(Model model) {
		List<Customer> customerList = cser.getIntention(1);
		model.addAttribute("customerList", customerList);
		return "intention";
	}

	@RequestMapping("/order")
	public String getOrder(Model model) {
		List<Customer> customerList = cser.getIntention(2);
		model.addAttribute("orderList", customerList);
		return "order";
	}

	@RequestMapping("/expire")
	public String getExpire(Model model) {
		List<Vip> vipList = vser.getAll();
		model.addAttribute(vipList);
		return "expire";
	}

	@RequestMapping("/addVip")
	public String addVip(Model model) {

		int maxVipNum = vser.getMaxVipnum();
		model.addAttribute("maxVipNum", maxVipNum);
		List<Sales> salesList = sser.getAll();
		model.addAttribute("salesList", salesList);
		return "addvip";
	}

	@RequestMapping("/addVip2")
	public String addVip2(Model model, Date joindate, int age, String sex, String phone, String viplength, int uid,
			MultipartFile upfile, String name, int vipnum, String expire, MultipartHttpServletRequest request) throws IOException {
		
		String notename=upfile.getOriginalFilename();
		SimpleDateFormat format=new SimpleDateFormat("yyyyMMddHHmmss");
		String note=format.format(new java.util.Date())+notename;
		String path=request.getSession().getServletContext().getRealPath("/");
		File file1=new File(path,note);
		
		InputStream in =upfile.getInputStream();
		FileUtils.copyInputStreamToFile(in, file1);
		
		vser.addNewVip(joindate, age, sex, phone, viplength, uid, note, name, vipnum, expire);
		return "redirect:/members/vip";
	}

	@RequestMapping("/updateVip")
	public String updateVip(Model model, int vid) {
		Vip vip = vser.getById(vid);
		model.addAttribute("vip", vip);
		List<Sales> salesList = sser.getAll();
		model.addAttribute("salesList", salesList);
		return "updatevip";
	}

	@RequestMapping("/updateVip2")
	public String updateVip2(Model model, int age, int sex, String phone, int viplength, int uid, String note,
			String name, int vipnum) {
		vser.updateVipByVipnum(age, sex, phone, viplength, uid, note, name, vipnum);
		return "redirect:/members/vip";
	}

	@RequestMapping("/deleteVip")
	public String deleteVip(int vid) {
		vser.deleteVip(vid);
		return "redirect:/members/vip";
	}

	@RequestMapping("/addCustomer")
	public String addCustomer(Model model) {
		List<Sales> salesList = sser.getAll();
		model.addAttribute("salesList", salesList);
		return "addCustomer";
	}

	@RequestMapping("/addCustomer2")
	public String addCuetomer2(Model model, String age, String name, int sex, String phone, int intention, int uid,
			String orderdate) throws ParseException {
		if (intention == 1) {
			cser.addCustomer(age, name, sex, phone, intention, uid, null);
			return "redirect:/members/intention";
		} else {
			SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
			cser.addCustomer(age, name, sex, phone, intention, uid, sf.parse(orderdate));
			return "redirect:/members/vip";
		}
	}
	
	@RequestMapping("/deleteIntention")
	public String deleteIntention(int cid) {
		cser.deleteIntention(cid);
		return "redirect:/members/intention";
	}
	@RequestMapping("/deleteOrder")
	public String deleteOrder(int cid) {
		cser.deleteIntention(cid);
		return "redirect:/members/intention";
	}
	
	@RequestMapping("/updateExpire")
	public String updateExpire(int vid,Model model) {
		Vip vip=vser.getById(vid);
		model.addAttribute("vip", vip);
		return "updateexpire";
		
	}

}
