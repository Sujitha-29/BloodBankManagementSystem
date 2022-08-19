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

import com.chainsys.bbms.model.BloodDonationDetail;
import com.chainsys.bbms.service.BloodDonationService;

@Controller
@RequestMapping("/blooddonation")
public class BloodDonationController 
{
	public static final String LISTOFBLOODDONATION = "redirect:/blooddonation/listblooddonation";
	public static final String ADDBLOODDONATION = "add-blooddonation-form";
	public static final String UPDATEBLOODDONATION = "update-blooddonation-form";

	@Autowired
	BloodDonationService bloodDonationService;
	@GetMapping("/listblooddonation")
	public String getallBloodDonationDetails(Model model)
	{
		List<BloodDonationDetail> blooddonationlist=bloodDonationService.getallDonationDetail();
		model.addAttribute("allblooddontaion",blooddonationlist);
		return "list-blooddonation";
	}
	@GetMapping("/addblooddonationform")
	public String showAddNewDonationForm(Model model)
	{
		BloodDonationDetail thebd = new BloodDonationDetail();
		model.addAttribute("addblooddonation", thebd);
		return ADDBLOODDONATION;		
	}
	@PostMapping("/add")
	public String addNewBloodDonationDetails(@Valid@ModelAttribute("addblooddonation") BloodDonationDetail thebd,Errors errors)
	{
		if(errors.hasErrors())
		{
			return ADDBLOODDONATION;
		}
		bloodDonationService.save(thebd);
		return LISTOFBLOODDONATION;
	}
	@GetMapping("/updateblooddonationform")
	public String updateBloodDonationForm(@RequestParam("blooddonationid") int id,Model model)
	{
		BloodDonationDetail thebd = bloodDonationService.findById(id);
		model.addAttribute("updateblooddonation",thebd);
		return UPDATEBLOODDONATION;	
	}
	@PostMapping("/update")
	public String updateblooddonationdetails(@Valid@ModelAttribute("updateblooddonation") BloodDonationDetail thebd,Errors errors)
	{
		if(errors.hasErrors())
		{
			return UPDATEBLOODDONATION;
		}
		bloodDonationService.save(thebd);
		return LISTOFBLOODDONATION;
	}
	@GetMapping("/deleteblooddontion")
	public String deleteBloodDonationDetails(@RequestParam("id") int id,Model model)
	{
		bloodDonationService.deleteById(id);
		return LISTOFBLOODDONATION;
	}
	@GetMapping("/getblooddonation")
	public String getBloodDontionById(@RequestParam("id") int id,Model model)
	{
		BloodDonationDetail thebd = bloodDonationService.findById(id);
		model.addAttribute("getblooddonationbyid",thebd);
		return "find-blood-donation-by-id";
		
	}

}