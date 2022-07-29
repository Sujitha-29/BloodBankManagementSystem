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

import com.chainsys.bbms.pojo.AdminDetail;
import com.chainsys.bbms.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController 
{
	@Autowired
	AdminService adservice;
	@GetMapping("/list")
	public String getAllAdmin(Model model)
	{
		List<AdminDetail> adminList=adservice.getAdmins();
		model.addAttribute("alladmins",adminList);
		return "list-admin";
	}
	
	@GetMapping("/addform")
	public String showAddForm(Model model)
	{
		AdminDetail theadmin=new AdminDetail();
		model.addAttribute("addadmin",theadmin);
		return "add-admins-form";
	}
	
	@PostMapping("/add")
	public String addNewAdmin(@ModelAttribute("addadmin") AdminDetail theadmin)
	{
		adservice.save(theadmin);
		return "redirect:/admin/list";
	}
	
	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("adminid") int id,Model model)
	{
		AdminDetail theadmin=adservice.findById(id);
		model.addAttribute("updateadmin", theadmin);
		return "update-admin-form";	
	}
	
	@PostMapping("/updatead")
	public String updateadmin(@ModelAttribute("updateadmin") AdminDetail theadmin)
	{
		adservice.save(theadmin);
		return "redirect:/admin/list";
	}
	
	@GetMapping("/deleteadmin")
	public String deleteAdmin(@RequestParam("id") int id,Model model)
	{
		adservice.deleteById(id);
		return "redirect:/admin/list";
	}
	
	@GetMapping("/getadmin")
	public String getAdmin(@RequestParam("id") int id ,Model model)
	{
		AdminDetail ad=adservice.findById(id);
		model.addAttribute("getadmin",ad);
		return "find-admin-by-id";
		
	}

}
