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

import com.chainsys.bbms.dto.BloodGroupBloodRequestDTO;
import com.chainsys.bbms.dto.BloodGroupPersonDetailDTO;
import com.chainsys.bbms.model.BloodGroupDetail;
import com.chainsys.bbms.service.BloodGroupService;

@Controller
@RequestMapping("/bloodgroup")
public class BloodGroupController {
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
		return "add-blood-group-form";
	}

	@PostMapping("/add")
	public String addNewBloodGroup(@ModelAttribute("addbloodgroup") BloodGroupDetail thebg) {
		bloodGroupService.save(thebg);
		return "redirect:/bloodgroup/listbloodgroup";
	}

	@GetMapping("/updatebloodgroupform")
	public String ShowUpdateForm(@RequestParam("bloodgroupid") int id, Model model) {
		BloodGroupDetail thebg = bloodGroupService.findById(id);
		model.addAttribute("updatebloodgroup", thebg);
		return "update-bloodgroup-form";
	}

	@PostMapping("/update")
	public String updateBloodgroup(@ModelAttribute("updatebloodgroup") BloodGroupDetail thebg) {
		bloodGroupService.save(thebg);
		return "redirect:/bloodgroup/listbloodgroup";
	}

	@GetMapping("/deletebloodgroup")
	public String deleteBloodGroup(@RequestParam("id") int id, Model model) {
		bloodGroupService.deleteById(id);
		return "redirect:/bloodgroup/listbloodgroup";
	}

	@GetMapping("/getbloodgroup")
	public String getBloodGroupById(@RequestParam("id") int id, Model model) {
		BloodGroupDetail thebg = bloodGroupService.findById(id);
		model.addAttribute("getbloodgroupbyid", thebg);
		return "find-bloodgroup-by-id";
	}
	
	@GetMapping("/getpersonbybloodgroup")
    public String getPersonDetail(@RequestParam("id") int id,Model model) {
		BloodGroupPersonDetailDTO dto =bloodGroupService.getBloodGroupPersonDetail(id);
        model.addAttribute("getbloodgroup" ,dto.getBloodgroup());
        model.addAttribute("personlist",dto.getPersonlist());
        return "list-bloodgroup-persondetail";
    }
	
	@GetMapping("/getrequestbybloodgroup")
	public String getRequestDetail(@RequestParam("id") int id,Model model)
	{
		BloodGroupBloodRequestDTO dto=bloodGroupService.getBloodGroupRequestDetail(id);
		model.addAttribute("getbloodgroup", dto.getBloodgroup());
		model.addAttribute("requestlist",dto.getRequestlist());
		return "blood-group-request-details";	
	}
}
