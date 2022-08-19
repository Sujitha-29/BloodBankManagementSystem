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

import com.chainsys.bbms.model.BloodTransaction;
import com.chainsys.bbms.service.BloodTransactionService;

@Controller
@RequestMapping("/bloodtransaction")
public class BloodTransactionController
{ 
	public static final String LISTOFTRANSACTION = "redirect:/bloodtransaction/listbloodtransaction";
	public static final String ADDTRANSACTION = "add-transaction-form";
	public static final String UPDATETRANSACTION = "update-transaction-form";

	@Autowired
	BloodTransactionService bloodTransactionService;
	@GetMapping("/listbloodtransaction")
	public String getAllBloodTransaction(Model model)
	{	
			List<BloodTransaction> translist=bloodTransactionService.getBloodTransaction();
			model.addAttribute("alltrans",translist);
			return "list-transaction";
	}
	@GetMapping("/addbloodtransactionform")
	public String showbloodTransactionAddForm(Model model)
	{
		BloodTransaction thetrans=new BloodTransaction();
		model.addAttribute("addtransaction",thetrans);
		return ADDTRANSACTION;
	}
	@PostMapping("/add")
	public String addNewBloodTransaction(@Valid@ModelAttribute("addtransaction") BloodTransaction thetrans,Errors errors)
	{
		if(errors.hasErrors())
		{
			return ADDTRANSACTION;
		}
		bloodTransactionService.save(thetrans);
		return LISTOFTRANSACTION;
	}
	@GetMapping("/updatebloodtransactionform")
	public String showBloodTransactionUpdateForm(@RequestParam("transid") int id,Model model)
	{
		BloodTransaction thetrans=bloodTransactionService.findById(id);
		model.addAttribute("updatetransaction", thetrans);
		return UPDATETRANSACTION;	
	}
	@PostMapping("/update")
	public String updateBloodTransaction(@Valid@ModelAttribute("updatetransaction") BloodTransaction thetrans,Errors errors)
	{
		if(errors.hasErrors())
		{
			return UPDATETRANSACTION;
		}
		bloodTransactionService.save(thetrans);
		return LISTOFTRANSACTION;
	}
	@GetMapping("/deletebloodtransaction")
	public String deleteTransaction(@RequestParam("id") int id,Model model)
	{
		bloodTransactionService.deleteById(id);
		return LISTOFTRANSACTION;
	}
	@GetMapping("/gettransaction")
	public String getAdmin(@RequestParam("id") int id ,Model model)
	{
		BloodTransaction bt=bloodTransactionService.findById(id);
		model.addAttribute("gettransactionbyid",bt);
		return "find-transaction-by-id";
		
	}

}
