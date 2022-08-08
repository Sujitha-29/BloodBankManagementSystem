package com.chainsys.bbms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.bbms.businesslogic.Logic;
import com.chainsys.bbms.model.BloodGroupDetail;
import com.chainsys.bbms.model.BloodRequest;
import com.chainsys.bbms.model.BloodTransaction;
import com.chainsys.bbms.repository.BloodTransactionRepository;

@Service
public class BloodTransactionService 
{
	@Autowired
	private BloodTransactionRepository bloodTransactionRepository;
	@Autowired 
	private BloodGroupService bloodGroupService;
	@Autowired
	private BloodRequestService bloodRequestService;
	public List<BloodTransaction> getBloodTransaction()
	{
		List<BloodTransaction> translist=bloodTransactionRepository.findAll();
		return translist;
	}
	public BloodTransaction save(BloodTransaction bt)
	{	BloodTransaction bloodTransaction =bloodTransactionRepository.save(bt);
	    BloodRequest BloodRequest=bloodRequestService.findById(bt.getRequestId());
	    BloodGroupDetail bloodGroupDetail=bloodGroupService.findById(BloodRequest.getBloodGroupId());
	    int quantity=Logic.reduceQuantity(bloodGroupDetail.getStockInUnits(), bt.getQuantity());
	    bloodGroupDetail.setStockInUnits(quantity);
		bloodGroupService.save(bloodGroupDetail);
		return bloodTransaction;
	}
	public BloodTransaction findById(int id)
	{
		return bloodTransactionRepository.findById(id);
	}
	public void deleteById(int id)
	{
		bloodTransactionRepository.deleteById(id);
	}
//	public BloodTransaction save(BloodTransaction bt)
//	{
//		return bloodTransactionRepository.save(bt);
//	}

}
