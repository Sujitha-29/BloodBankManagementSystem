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

import com.chainsys.bbms.dto.PersonDetailBloodDonationDetailDTO;
import com.chainsys.bbms.model.BloodGroupDetail;
import com.chainsys.bbms.model.PersonDetail;
import com.chainsys.bbms.service.BloodGroupService;
import com.chainsys.bbms.service.PersonDetailsService;

@Controller
@RequestMapping("/person")
public class PersonDetailsController {
	@Autowired
	PersonDetailsService personDetailService;
	@Autowired
	private BloodGroupService bloodGroupService;
	
	@GetMapping("/listpersondetails")
	public String getAllPersonDetails(Model model)
	{
		List<PersonDetail> personlist=personDetailService.getPersons();
		model.addAttribute("allperson",personlist);
		return "list-persondetails";
	}
	
	@GetMapping("/addpersonform")
	public String showPersonDetailAddForm(Model model)
	{
		PersonDetail theperson=new PersonDetail();
		model.addAttribute("addperson",theperson);
		List<BloodGroupDetail>bloodGrouplist=bloodGroupService.getBloodGroup();
		model.addAttribute("bloodGrouplist", bloodGrouplist);
		return "add-persons-form";
	}
	@PostMapping("/add")
	public String addNewPerson(@ModelAttribute("addperson") PersonDetail theperson)
	{
		personDetailService.save(theperson);
		return "redirect:/person/getperson?id=" +theperson.getPersonId();
	}
		
	@GetMapping("/updatepersonform")
	public String showPersonDeatilUpdateForm(@Valid @RequestParam("personid") int id,Model model)
	{
		PersonDetail theperson=personDetailService.findById(id);
		model.addAttribute("updateperson", theperson);
		return "update-persons-form";	
	}
	
	@PostMapping("/update")
	public String updatePerson(@Valid@ModelAttribute("updateperson") PersonDetail theperson,Errors errors)
	{
		if(errors.hasErrors())
		{
			return "update-persons-form";
		}
		personDetailService.save(theperson);
		return "redirect:/person/listpersondetails";
	}
	@GetMapping("/deleteperson")
	public String deletePerson(@Valid @RequestParam("id") int id,Model model)
	{
		personDetailService.deleteById(id);
		return "redirect:/person/listpersondetails";
	}
	@GetMapping("/getperson")
	public String getPersons(@RequestParam("id") int id ,Model model)
	{
		PersonDetail pd=personDetailService.findById(id);
		model.addAttribute("getperson",pd);
		return "find-person-by-id";
		
	}
	@GetMapping("/getpersonbydonation")
	public String getDonationDetail(@RequestParam("id") int id,Model model)
	{
		PersonDetailBloodDonationDetailDTO dto=personDetailService.getPersonDonationDetails(id);
		model.addAttribute("getperson", dto.getPersonDetail());
		model.addAttribute("getdonation", dto.getDonationList());
		return "person-donation-detail";
	}

}
