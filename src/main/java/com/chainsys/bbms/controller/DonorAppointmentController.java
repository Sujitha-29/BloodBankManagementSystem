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
	public static final String LISTOFAPPOINTMENT = "redirect:/appointment/listappointment";
	public static final String ADDAPOINTEMENT = "add-appointment-form";
	public static final String DONORAPPOINTMENTUPDATE = "update-appointment-form";
	public static final String RESULT="result";
	public static final String ELIGIBLE="Succesfully submitted your Appointment";
	public static final String NOTELIGIBLE="you are not eligible for Blood Donation";
	
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
		return ADDAPOINTEMENT;
	}
	@PostMapping("/add")
	public String addNewDonorAppointment(@Valid@ModelAttribute("addappointment") DonorAppointment theappo,Errors errors,Model model)
	{
		if(errors.hasErrors())
		{
			return ADDAPOINTEMENT;
		}
		List<BloodDonationDetail>bloodDonationDetailList=null;
		try {
			bloodDonationDetailList=bloodDonationService.findBloodDonationDetailBypersonId(theappo.getPersonId());
		}catch(Exception exp) {
			donorAppointmentService.save(theappo);
			model.addAttribute(RESULT, ELIGIBLE);
			return ADDAPOINTEMENT;
		}
		try {
			if(Logic.unEligibilityForDonation(theappo.getAppointmentDate(), bloodDonationDetailList.get(0).getDonationDate())) {
				model.addAttribute(RESULT, NOTELIGIBLE);
				return ADDAPOINTEMENT;
			}
		}catch(Exception exp) {
			donorAppointmentService.save(theappo);
			model.addAttribute(RESULT,ELIGIBLE);
			return ADDAPOINTEMENT;
			
		}
		donorAppointmentService.save(theappo);
		model.addAttribute(RESULT, ELIGIBLE);
		return ADDAPOINTEMENT;
	}
	@GetMapping("/updatedonorappointmentform")
	public String showAppointemntUpdateForm(@RequestParam("appoid") int id,Model model)
	{
		DonorAppointment theappo=donorAppointmentService.findById(id);
		model.addAttribute("updateappointment", theappo);
		return DONORAPPOINTMENTUPDATE;	
	}
	@PostMapping("/update")
	public String updateDonorAppointments(@Valid@ModelAttribute("updateappointment") DonorAppointment donorAppointment,Errors errors)
	{
		if(errors.hasErrors())
		{
			return DONORAPPOINTMENTUPDATE;
		}
		
		donorAppointmentService.save(donorAppointment);
		return LISTOFAPPOINTMENT;
	}
	@GetMapping("/deleteappointment")
	public String deleteAppointment(@RequestParam("id") int id,Model model)
	{
		donorAppointmentService.deleteById(id);
		return LISTOFAPPOINTMENT;
	}
	@GetMapping("/getappointment")
	public String getAppointment(@RequestParam("id") int id ,Model model)
	{
		DonorAppointment da=donorAppointmentService.findById(id);
		model.addAttribute("getappointmentbyid",da);
		return "find-appointment-by-id";	
	}

}
