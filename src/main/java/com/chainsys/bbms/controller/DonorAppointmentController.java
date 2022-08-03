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
	DonorAppointmentService donorAppointmentService;
	@GetMapping("/listappointment")
	public String getAllAppointment(Model model)
	{
		List<DonorAppointment> appolist=donorAppointmentService.getAppointments();
		model.addAttribute("allappointments",appolist);
		return "list-appointment";
	}
	@GetMapping("/adddonorappointmentform")
	public String showAppointmentAddForm(Model model)
	{
		DonorAppointment theappo=new DonorAppointment();
		model.addAttribute("addappointment",theappo);
		return "add-appointment-form";
	}
	@PostMapping("/add")
	public String addNewAppointment(@ModelAttribute("addappointment") DonorAppointment theappo)
	{
		donorAppointmentService.save(theappo);
		return "redirect:/appointment/listappointment";
	}
	@GetMapping("/updatedonorappointmentform")
	public String showAppointemntUpdateForm(@RequestParam("appoid") int id,Model model)
	{
		DonorAppointment theappo=donorAppointmentService.findById(id);
		model.addAttribute("updateappointment", theappo);
		return "update-appointment-form";	
	}
	@PostMapping("/update")
	public String updateAppointment(@ModelAttribute("updateappointment") DonorAppointment theappo)
	{
		donorAppointmentService.save(theappo);
		return "redirect:/appointment/listappointment";
	}
	@GetMapping("/deleteappointment")
	public String deleteAppointment(@RequestParam("id") int id,Model model)
	{
		donorAppointmentService.deleteById(id);
		return "redirect:/appointment/listappointment";
	}
	@GetMapping("/getappointment")
	public String getAppointment(@RequestParam("id") int id ,Model model)
	{
		DonorAppointment da=donorAppointmentService.findById(id);
		model.addAttribute("getappointmentbyid",da);
		return "find-appointment-by-id";	
	}

}
