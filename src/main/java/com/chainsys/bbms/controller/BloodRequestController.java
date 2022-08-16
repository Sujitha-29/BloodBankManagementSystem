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

import com.chainsys.bbms.dto.BloodRequestBloodTransactionDTO;
import com.chainsys.bbms.model.BloodGroupDetail;
import com.chainsys.bbms.model.BloodRequest;
import com.chainsys.bbms.service.BloodGroupService;
import com.chainsys.bbms.service.BloodRequestService;

@Controller
@RequestMapping("/bloodrequest")
public class BloodRequestController
{
	@Autowired
	BloodRequestService bloodRequestService;
	@Autowired
	private BloodGroupService bloodGroupService;
	@GetMapping("/listbloodrequest")
	public String getAllBloodRequest(Model model)
	{
		List<BloodRequest> reqlist=bloodRequestService.getBloodRequest();
		model.addAttribute("getallbloodrequest",reqlist);
		return "list-request";
	}
	
	@GetMapping("/addbloodrequestform")
	public String showAddBloodRequestForm(Model model)
	{
		BloodRequest thereq=new BloodRequest();
		model.addAttribute("addrequest",thereq);
		List<BloodGroupDetail>BloodGrouplist=bloodGroupService.getBloodGroup();
		model.addAttribute("bloodGrouplist", BloodGrouplist);
		return "add-request-form";
	}
	
	@PostMapping("/addbloodrequest")
	public String addNewBloodRequest(@ModelAttribute("addrequest") BloodRequest thereq)
	{
		bloodRequestService.save(thereq);
		return "redirect:/bloodrequest/getbloodrequest?id=" + thereq.getRequestId();
	}
	
	@GetMapping("/updatebloodrequestform")
	public String showBloodRequestUpdateForm(@RequestParam("reqid") int id,Model model)
	{
		BloodRequest thereq=bloodRequestService.findById(id);
		model.addAttribute("updaterequest", thereq);
		return "update-request-form";	
	}
	
	@PostMapping("/updatebloodrequest")
	public String updateBloodRequest(@Valid@ModelAttribute("updaterequest") BloodRequest thereq,Errors errors)
	{
		if(errors.hasErrors())
		{
			return "update-request-form";
		}
		bloodRequestService.save(thereq);
		return "redirect:/bloodrequest/listbloodrequest";
	}
	@GetMapping("/deletebloodrequest")
	public String deleteRequest(@RequestParam("id") int id,Model model)
	{
		bloodRequestService.deleteById(id);
		return "redirect:/bloodrequest/listbloodrequest";
	}
	@GetMapping("/getbloodrequest")
	public String getRequest(@RequestParam("id") int id ,Model model)
	{
		BloodRequest ad=bloodRequestService.findById(id);
		model.addAttribute("getrequestbyid",ad);
		return "find-req-by-id";	
	}
	@GetMapping("/getbloodtransactionbyrequest")
	public String getTransaction(@RequestParam("id") int id,Model model)
	{
		BloodRequestBloodTransactionDTO dto=bloodRequestService.getBloodRequestAndTransactionDetail(id);
		model.addAttribute("getbloodrequest",dto.getBloodrequest());
		model.addAttribute("getbloodtrans",dto.getBloodTransaction());
		return "blood-request-transaction-details";	
	}
}
