package com.chainsys.bbms.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.bbms.businesslogic.Logic;
import com.chainsys.bbms.model.BloodDonationDetail;
import com.chainsys.bbms.model.DonorAppointment;
import com.chainsys.bbms.service.BloodDonationService;
import com.chainsys.bbms.service.DonorAppointmentService;

@Controller
@RequestMapping("/appointment")
public class DonorAppointmentController 
{
	@Autowired
	DonorAppointmentService donorAppointmentService;
	@Autowired
	private BloodDonationService bloodDonationService;
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
	public String addNewAppointment(@Valid@ModelAttribute("addappointment") DonorAppointment theappo,Errors errors,Model model)
	{
		if(errors.hasErrors())
		{
			return "add-appointment-form";
		}
		List<BloodDonationDetail>bloodDonationDetailList=bloodDonationService.findBloodDonationDetailBypersonId(theappo.getPersonId()); 
		if(Logic.unEligibilityForDonation(theappo.getAppointmentDate(), bloodDonationDetailList.get(0).getDonationDate())) {
			model.addAttribute("result", "you are not eligible for Blood Donation");
			return "add-appointment-form";
		}
		donorAppointmentService.save(theappo);
		model.addAttribute("result", "Succecfully submitted your Appointment");
		return "add-appointment-form";
	}
	@GetMapping("/updatedonorappointmentform")
	public String showAppointemntUpdateForm(@RequestParam("appoid") int id,Model model)
	{
		DonorAppointment theappo=donorAppointmentService.findById(id);
		model.addAttribute("updateappointment", theappo);
		return "update-appointment-form";	
	}
	@PostMapping("/update")
	public String updateAppointment(@Valid@ModelAttribute("updateappointment") DonorAppointment appointment,Errors errors)
	{
		if(errors.hasErrors())
		{
			return "update-appointment-form";
		}
		
		donorAppointmentService.save(appointment);
		return "redirect:/appointment/listappointment";
	}
	@GetMapping("/deleteappointment")
	public String deleteAppointment(@Valid @RequestParam("id") int id,Model model)
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
