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

import com.chainsys.bbms.dto.BloodGroupBloodRequestDTO;
import com.chainsys.bbms.dto.BloodGroupPersonDetailDTO;
import com.chainsys.bbms.model.BloodGroupDetail;
import com.chainsys.bbms.service.BloodGroupService;

@Controller
@RequestMapping("/bloodgroup")
public class BloodGroupController {
	public static final String LISTOFBLOODGROUP = "redirect:/bloodgroup/listbloodgroup";
	public static final String ADDBLOODGROUP = "add-blood-group-form";
	@Autowired
	BloodGroupService bloodGroupService;

	@GetMapping("/listbloodgroup")
	public String getallBloodGroup(Model model) {
		List<BloodGroupDetail> bloodgrouplist = bloodGroupService.getBloodGroup();
		model.addAttribute("allbloodgroup", bloodgrouplist);
		return "list-blood-group";
	}

	@GetMapping("/addbloodgroupform")
	public String showAddForm(Model model) {
		BloodGroupDetail thebg = new BloodGroupDetail();
		model.addAttribute("addbloodgroup", thebg);
		return ADDBLOODGROUP;
	}

	@PostMapping("/savebloodgroup")
	public String addNewBloodGroup(@Valid @ModelAttribute("addbloodgroup") BloodGroupDetail thebg, Errors errors) {
		if (errors.hasErrors()) {
			return ADDBLOODGROUP;
		}
		bloodGroupService.save(thebg);
		return LISTOFBLOODGROUP;
	}

	@GetMapping("/updatebloodgroupform")
	public String showUpdateForm(@RequestParam("bloodgroupid") int id, Model model) {
		BloodGroupDetail thebg = bloodGroupService.findById(id);
		model.addAttribute("addbloodgroup", thebg);
		return ADDBLOODGROUP;
	}
	@GetMapping("/deletebloodgroup")
	public String deleteBloodGroup(@RequestParam("id") int id, Model model) {
		bloodGroupService.deleteById(id);
		return LISTOFBLOODGROUP;
	}

	@GetMapping("/getbloodgroup")
	public String getBloodGroupById(@RequestParam("id") int id, Model model) {
		BloodGroupDetail thebg = bloodGroupService.findById(id);
		model.addAttribute("getbloodgroupbyid", thebg);
		return "find-bloodgroup-by-id";
	}

	@GetMapping("/getpersonbybloodgroup")
	public String getPersonDetail(@RequestParam("id") int id, Model model) {
		BloodGroupPersonDetailDTO dto = bloodGroupService.getBloodGroupPersonDetail(id);
		model.addAttribute("getbloodgroup", dto.getBloodgroup());
		model.addAttribute("personlist", dto.getPersonlist());
		return "list-bloodgroup-persondetail";
	}

	@GetMapping("/getrequestbybloodgroup")
	public String getRequestDetail(@RequestParam("id") int id, Model model) {
		BloodGroupBloodRequestDTO dto = bloodGroupService.getBloodGroupRequestDetail(id);
		model.addAttribute("getbloodgroup", dto.getBloodgroup());
		model.addAttribute("requestlist", dto.getRequestlist());
		return "blood-group-request-details";
	}
}
