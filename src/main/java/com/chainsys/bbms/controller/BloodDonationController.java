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

import com.chainsys.bbms.model.BloodDonationDetail;
import com.chainsys.bbms.model.BloodGroupDetail;
import com.chainsys.bbms.service.BloodDonationService;

@Controller
@RequestMapping("/blooddonation")
public class BloodDonationController 
{
	@Autowired
	BloodDonationService blooddonationservice;
	@GetMapping("/list")
	public String getallBloodDonationDetails(Model model)
	{
		List<BloodDonationDetail> blooddonationlist=blooddonationservice.getallDonationDetail();
		model.addAttribute("allblooddontaion",blooddonationlist);
		return "list-blooddonation";
	}
	@GetMapping("/addform")
	public String showAddNewDonationForm(Model model)
	{
		BloodDonationDetail thebd = new BloodDonationDetail();
		model.addAttribute("addblooddonation", thebd);
		return "add-blooddonation-form";		
	}
	@PostMapping("/addbd")
	public String addNewBloodDonationDetails(@ModelAttribute("addblooddonation") BloodDonationDetail thebd)
	{
		blooddonationservice.save(thebd);
		return "redirect:/blooddonation/list";
	}
	@GetMapping("/updateform")
	public String updateBloodDonationForm(@RequestParam("blooddonationid") int id,Model model)
	{
		BloodDonationDetail thebd = blooddonationservice.findById(id);
		model.addAttribute("updateblooddonation",thebd);
		return "update-blooddonation-form";	
	}
	@PostMapping("/updatebd")
	public String updateblooddonationdetails(@ModelAttribute("updateblooddonation") BloodDonationDetail thebd)
	{
		blooddonationservice.save(thebd);
		return "redirect:/blooddonation/list";
	}
	@GetMapping("/deletebd")
	public String deleteBloodDonationDetails(@RequestParam("id") int id,Model model)
	{
		blooddonationservice.deleteById(id);
		return "redirect:/blooddonation/list";
	}
	@GetMapping("/getbloodgroup")
	public String getBloodDontionById(@RequestParam("id") int id,Model model)
	{
		BloodDonationDetail thebd = blooddonationservice.findById(id);
		model.addAttribute("getbg",thebd);
		return "find-blood-donation-by-id";
		
	}

}
