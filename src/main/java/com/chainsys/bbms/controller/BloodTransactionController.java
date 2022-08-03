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

import com.chainsys.bbms.model.BloodTransaction;
import com.chainsys.bbms.service.BloodTransactionService;

@Controller
@RequestMapping("/bloodtransaction")
public class BloodTransactionController
{
	@Autowired
	BloodTransactionService bloodTransactionService;
	@GetMapping("/listbloodtransaction")
	public String getAllBloodTransaction(Model model)
	{
		{
			List<BloodTransaction> translist=bloodTransactionService.getBloodTransaction();
			model.addAttribute("alltrans",translist);
			return "list-transaction";
		}
	}
	@GetMapping("/addbloodtransactionform")
	public String showbloodTransactionAddForm(Model model)
	{
		BloodTransaction thetrans=new BloodTransaction();
		model.addAttribute("addtransaction",thetrans);
		return "add-transaction-form";
	}
	@PostMapping("/add")
	public String addNewBloodTransaction(@ModelAttribute("addtransaction") BloodTransaction thetrans)
	{
		bloodTransactionService.save(thetrans);
		return "redirect:/bloodtransaction/listbloodtransaction";
	}
	@GetMapping("/updatebloodtransactionform")
	public String showBloodTransactionUpdateForm(@RequestParam("transid") int id,Model model)
	{
		BloodTransaction thetrans=bloodTransactionService.findById(id);
		model.addAttribute("updatetransaction", thetrans);
		return "update-transaction-form";	
	}
	@PostMapping("/update")
	public String updateBloodTransaction(@ModelAttribute("updatetransaction") BloodTransaction thetrans)
	{
		bloodTransactionService.save(thetrans);
		return "redirect:/bloodtransaction/listbloodtransaction";
	}
	@GetMapping("/deletebloodtransaction")
	public String deleteTransaction(@RequestParam("id") int id,Model model)
	{
		bloodTransactionService.deleteById(id);
		return "redirect:/bloodtransaction/listbloodtransaction";
	}
	@GetMapping("/gettransaction")
	public String getAdmin(@RequestParam("id") int id ,Model model)
	{
		BloodTransaction bt=bloodTransactionService.findById(id);
		model.addAttribute("gettransactionbyid",bt);
		return "find-transaction-by-id";
		
	}

}
