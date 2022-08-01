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

import com.chainsys.bbms.model.BloodRequest;
import com.chainsys.bbms.service.BloodRequestService;

@Controller
@RequestMapping("/bloodrequest")
public class BloodRequestController
{
	@Autowired
	BloodRequestService bloodrequestservice;
	@GetMapping("/list")
	public String getAllBloodRequest(Model model)
	{
		List<BloodRequest> reqlist=bloodrequestservice.getBloodRequest();
		model.addAttribute("getallrequest",reqlist);
		return "list-request";
	}
	
	@GetMapping("/addform")
	public String showAddBloodRequestForm(Model model)
	{
		BloodRequest thereq=new BloodRequest();
		model.addAttribute("addrequest",thereq);
		return "add-request-form";
	}
	
	@PostMapping("/addbloodrequest")
	public String addNewBloodRequest(@ModelAttribute("addrequest") BloodRequest thereq)
	{
		bloodrequestservice.save(thereq);
		return "redirect:/bloodrequest/list";
	}
	
	@GetMapping("/updateform")
	public String showBloodRequestUpdateForm(@RequestParam("reqid") int id,Model model)
	{
		BloodRequest thereq=bloodrequestservice.findById(id);
		model.addAttribute("updaterequest", thereq);
		return "update-request-form";	
	}
	
	@PostMapping("/updatebloodrequest")
	public String updateBloodRequest(@ModelAttribute("updaterequest") BloodRequest thereq)
	{
		bloodrequestservice.save(thereq);
		return "redirect:/bloodrequest/list";
	}
	@GetMapping("/deleterequest")
	public String deleteRequest(@RequestParam("id") int id,Model model)
	{
		bloodrequestservice.deleteById(id);
		return "redirect:/bloodrequest/list";
	}
	@GetMapping("/getrequest")
	public String getRequest(@RequestParam("id") int id ,Model model)
	{
		BloodRequest ad=bloodrequestservice.findById(id);
		model.addAttribute("getallrequest",ad);
		return "find-req-by-id";
		
	}
	
	
	
	
	

}
