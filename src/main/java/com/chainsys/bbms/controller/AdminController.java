package com.chainsys.bbms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.bbms.model.AdminDetail;
import com.chainsys.bbms.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController 
{
	@Autowired
	AdminService adminService;
	@GetMapping("/listadmins")
	public String getAllAdmin(Model model)
	{
		List<AdminDetail> adminlist=adminService.getAdmins();
		model.addAttribute("alladmins",adminlist);
		return "list-admin";
	}
	
	@GetMapping("/addadminform")
	public String showAdminAddForm(Model model)
	{
		AdminDetail theadmin=new AdminDetail();
		model.addAttribute("addadmins",theadmin);
		return "add-admins-form";
	}
	
	@PostMapping("/addadmin")
	public String addNewAdmin(@ModelAttribute("addadmins") AdminDetail theadmin)
	{
		adminService.save(theadmin);
		return "redirect:/admin/listadmins";
	}
	
	@GetMapping("/updateadminform")
	public String showAdminUpdateForm(@RequestParam("adminid") int id,Model model)
	{
		AdminDetail theadmin=adminService.findById(id);
		model.addAttribute("updateadmins", theadmin);
		return "update-admin-form";	
	}
	
	@PostMapping("/updateadmin")
	public String updateadmin(@ModelAttribute("updateadmins") AdminDetail theadmin)
	{
		adminService.save(theadmin);
		return "redirect:/admin/listadmins";
	}
	
	@GetMapping("/deleteadmin")
	public String deleteAdmin(@RequestParam("id") int id,Model model)
	{
		adminService.deleteById(id);
		return "redirect:/admin/listadmins";
	}
	
	@GetMapping("/getadmin")
	public String getAdmin(@RequestParam("id") int id ,Model model)
	{
		AdminDetail ad=adminService.findById(id);
		model.addAttribute("getadmins",ad);
		return "find-admin-by-id";		
	}
	
	@GetMapping("/adminpage")
	public String AdminLogin(Model model)
	{
		AdminDetail admin=new AdminDetail();
		model.addAttribute("login", admin);
		return "admin-login-form";
	}
	
	@PostMapping("/adminlogin")
	public String checkingAccess(@ModelAttribute("login") AdminDetail admin)
	{
		AdminDetail adminDetail =adminService.getAdminIdAdminPassword(admin.getAdminId(),admin.getAdminPassword());
		if(adminDetail !=null)
		{
			return "redirect:/home/adminuse";
		}
		else
		{
			return "invalid admin error";
		}
	}


}
