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

import com.chainsys.bbms.model.PersonDetails;
import com.chainsys.bbms.service.PersonDetailsService;

@Controller
@RequestMapping("/person")
public class PersonDetailsController {
	@Autowired
	PersonDetailsService pdservice;
	@GetMapping("/list")
	public String getAllPersonDetails(Model model)
	{
		List<PersonDetails> personlist=pdservice.getPersons();
		model.addAttribute("allpersons",personlist);
		return "list-persondetails";
	}
	
	@GetMapping("/addform")
	public String showAddForm(Model model)
	{
		PersonDetails theperson=new PersonDetails();
		model.addAttribute("addperson",theperson);
		return "add-persons-form";
	}
	@PostMapping("/add")
	public String addNewPerson(@ModelAttribute("addperson") PersonDetails theperson)
	{
		pdservice.save(theperson);
		return "redirect:/person/list";
	}
	
	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("personid") int id,Model model)
	{
		PersonDetails theperson=pdservice.findById(id);
		model.addAttribute("updateperson", theperson);
		return "update-persons-form";	
	}
	
	@PostMapping("/update")
	public String updatePerson(@ModelAttribute("updateperson") PersonDetails theperson)
	{
		pdservice.save(theperson);
		return "redirect:/person/list";
	}
	@GetMapping("/deleteperson")
	public String deletePerson(@RequestParam("id") int id,Model model)
	{
		pdservice.deleteById(id);
		return "redirect:/person/list";
	}
	@GetMapping("/getperson")
	public String getPersons(@RequestParam("id") int id ,Model model)
	{
		PersonDetails pd=pdservice.findById(id);
		model.addAttribute("getperson",pd);
		return "find-person-by-id";
		
	}

}
