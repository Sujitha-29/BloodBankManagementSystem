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
	BloodTransactionService btservice;
	@GetMapping("/list")
	public String getAllTransaction(Model model)
	{
		{
			List<BloodTransaction> translist=btservice.getBloodTransaction();
			model.addAttribute("alltrans",translist);
			return "list-transaction";
		}
	}
	@GetMapping("/addform")
	public String showAddForm(Model model)
	{
		BloodTransaction thetrans=new BloodTransaction();
		model.addAttribute("addtrans",thetrans);
		return "add-transaction-form";
	}
	@PostMapping("/addbt")
	public String addNewTransaction(@ModelAttribute("addtrans") BloodTransaction thetrans)
	{
		btservice.save(thetrans);
		return "redirect:/bloodtransaction/list";
	}
	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("transid") int id,Model model)
	{
		BloodTransaction thetrans=btservice.findById(id);
		model.addAttribute("updatetrans", thetrans);
		return "update-transaction-form";	
	}
	@PostMapping("/updatebt")
	public String updateTransaction(@ModelAttribute("updatetrans") BloodTransaction thetrans)
	{
		btservice.save(thetrans);
		return "redirect:/bloodtransaction/list";
	}
	@GetMapping("/deletetrans")
	public String deleteTransaction(@RequestParam("id") int id,Model model)
	{
		btservice.deleteById(id);
		return "redirect:/bloodtransaction/list";
	}
	@GetMapping("/gettrans")
	public String getAdmin(@RequestParam("id") int id ,Model model)
	{
		BloodTransaction bt=btservice.findById(id);
		model.addAttribute("gettrans",bt);
		return "find-transaction-by-id";
		
	}

}
