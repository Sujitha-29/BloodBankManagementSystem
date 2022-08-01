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

import com.chainsys.bbms.model.DonorAppointment;
import com.chainsys.bbms.service.DonorAppointmentService;

@Controller
@RequestMapping("/appointment")
public class DonorAppointmentController 
{
	@Autowired
	DonorAppointmentService daservice;
	@GetMapping("/list")
	public String getAllAppointment(Model model)
	{
		List<DonorAppointment> appolist=daservice.getAppointments();
		model.addAttribute("allappointment",appolist);
		return "list-appointment";
	}
	@GetMapping("/addform")
	public String showAddForm(Model model)
	{
		DonorAppointment theappo=new DonorAppointment();
		model.addAttribute("addappo",theappo);
		return "add-appointment-form";
	}
	@PostMapping("/addda")
	public String addNewAppointment(@ModelAttribute("addappo") DonorAppointment theappo)
	{
		daservice.save(theappo);
		return "redirect:/appointment/list";
	}
	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("appoid") int id,Model model)
	{
		DonorAppointment theappo=daservice.findById(id);
		model.addAttribute("updateappo", theappo);
		return "update-appointment-form";	
	}
	@PostMapping("/updateda")
	public String updateAppointment(@ModelAttribute("updateappo") DonorAppointment theappo)
	{
		daservice.save(theappo);
		return "redirect:/appointment/list";
	}
	@GetMapping("/deleteappo")
	public String deleteAppointment(@RequestParam("id") int id,Model model)
	{
		daservice.deleteById(id);
		return "redirect:/appointment/list";
	}
	@GetMapping("/getappointment")
	public String getAppointment(@RequestParam("id") int id ,Model model)
	{
		DonorAppointment da=daservice.findById(id);
		model.addAttribute("getappointment",da);
		return "find-appointment-by-id";
		
	}

}
