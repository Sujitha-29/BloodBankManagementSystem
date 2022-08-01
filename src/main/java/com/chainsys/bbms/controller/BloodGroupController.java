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

import com.chainsys.bbms.model.BloodGroupDetail;
import com.chainsys.bbms.service.BloodGroupService;

@Controller
@RequestMapping("/bloodgroup")
public class BloodGroupController
{
	@Autowired
	BloodGroupService bgservice;
	@GetMapping("/list")
	public String getallBloodGroup(Model model)
	{
		List<BloodGroupDetail> bloodgrouplist=bgservice.getBloodGroup();
		model.addAttribute("allbloodgroup",bloodgrouplist);
		return "list-blood-group";
	}
	@GetMapping("/addform")
	public String showAddForm(Model model)
	{
		BloodGroupDetail thebg = new BloodGroupDetail();
		model.addAttribute("addbloodgroup", thebg);
		return "add-blood-group-form";		
	}
	@PostMapping("/addbd")
	public String addNewBloodGroup(@ModelAttribute("addbloodgroup") BloodGroupDetail thebg)
	{
		bgservice.save(thebg);
		return "redirect:/bloodgroup/list";
	}
	
	@GetMapping("/updateform")
	public String ShowUpdateForm(@RequestParam("bloodgroupid") int id,Model model)
	{
		BloodGroupDetail thebg = bgservice.findById(id);
		model.addAttribute("updatebg",thebg);
		return "update-bloodgroup-form";	
	}
	
	@PostMapping("/update")
	public String updateBloodgroup(@ModelAttribute("updatebg") BloodGroupDetail thebg)
	{
		bgservice.save(thebg);
		return "redirect:/bloodgroup/list";
	}
	@GetMapping("/deletebg")
	public String deleteBloodGroup(@RequestParam("id") int id,Model model)
	{
		bgservice.deleteById(id);
		return "redirect:/bloodgroup/list";
	}
	
	@GetMapping("/getbloodgroup")
	public String getBloodGroupById(@RequestParam("id") int id,Model model)
	{
		BloodGroupDetail thebg = bgservice.findById(id);
		model.addAttribute("getbg",thebg);
		return "find-bloodgroup-by-id";
		
	}

}
