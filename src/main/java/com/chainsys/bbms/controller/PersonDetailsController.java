package com.chainsys.bbms.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
import com.chainsys.bbms.validation.InvalidInputDataException;

@Controller
@RequestMapping("/person")
public class PersonDetailsController {
	public static final String ADDPERSON = "add-persons-form";
	public static final String LISTOFPERSONS = "redirect:/person/listpersondetails";
	@Autowired
	PersonDetailsService personDetailService;
	@Autowired
	private BloodGroupService bloodGroupService;

	@GetMapping("/listpersondetails")
	public String getAllPersonDetails(Model model) {
		List<PersonDetail> personlist = personDetailService.getPersons();
		model.addAttribute("allperson", personlist);
		return "list-persondetails";
	}

	@GetMapping("/addpersonform")
	public String showPersonDetailAddForm(Model model) {
		PersonDetail theperson = new PersonDetail();
		model.addAttribute("addperson", theperson);
		List<BloodGroupDetail> bloodGrouplist = bloodGroupService.getBloodGroup();
		model.addAttribute("bloodGrouplist", bloodGrouplist);
		return ADDPERSON;
	}

	@PostMapping("/saveperson")
	public String addNewPerson(@ModelAttribute("addperson") PersonDetail theperson, Model model) {
		if (theperson.getPersonId() != 0) {
			personDetailService.save(theperson);
			return "redirect:/person/getperson?id=" + theperson.getPersonId();
		} else {
			PersonDetail theperson1 = personDetailService.getByPhone(theperson.getPhoneNo());
			try {
				if (theperson1 != null) {
					throw new InvalidInputDataException("* Phone Number already exists");
				}
			} catch (InvalidInputDataException exception) {
				model.addAttribute("message", exception.getMessage());
				List<BloodGroupDetail> bloodGrouplist = bloodGroupService.getBloodGroup();
				model.addAttribute("bloodGrouplist", bloodGrouplist);
				return ADDPERSON;
			}
			theperson1 = personDetailService.getByEmailId(theperson.getEmailId());
			try {
				if (theperson1 != null) {
					throw new InvalidInputDataException("* Email id already exists");
				}
			} catch (InvalidInputDataException exception) {
				model.addAttribute("error", exception.getMessage());
				List<BloodGroupDetail> bloodGrouplist = bloodGroupService.getBloodGroup();
				model.addAttribute("bloodGrouplist", bloodGrouplist);
				return ADDPERSON;
			}

			personDetailService.save(theperson);
			return "redirect:/person/getperson?id=" + theperson.getPersonId();
		}

	}

	@GetMapping("/updatepersonform")
	public String showPersonDeatilUpdateForm(@Valid @RequestParam("personid") int id, Model model,
			HttpSession session) {

		PersonDetail theperson = personDetailService.findById(id);
		session.setAttribute("updatePersonId", theperson.getPersonId());
		model.addAttribute("addperson", theperson);
		List<BloodGroupDetail> bloodGrouplist = bloodGroupService.getBloodGroup();
		model.addAttribute("bloodGrouplist", bloodGrouplist);
		return ADDPERSON;
	}

	/*
	 * @PostMapping("/update") public String
	 * updatePerson(@Valid@ModelAttribute("updateperson") PersonDetail
	 * theperson,Errors errors) { if(errors.hasErrors()) { return
	 * UPDATEPERSONDETAILS; } personDetailService.save(theperson); return
	 * LISTOFPERSONS; }
	 */
	@GetMapping("/deleteperson")
	public String deletePerson(@RequestParam("id") int id, Model model) {
		personDetailService.deleteById(id);
		return LISTOFPERSONS;
	}

	@GetMapping("/getperson")
	public String getPersons(@RequestParam("id") int id, Model model) {
		PersonDetail pd = personDetailService.findById(id);
		model.addAttribute("getperson", pd);
		return "find-person-by-id";

	}

	@GetMapping("/getpersonbydonation")
	public String getDonationDetail(@RequestParam("id") int id, Model model) {
		PersonDetailBloodDonationDetailDTO dto = personDetailService.getPersonDonationDetails(id);
		model.addAttribute("getperson", dto.getPersonDetail());
		model.addAttribute("getdonation", dto.getDonationList());
		return "person-donation-detail";
	}

}