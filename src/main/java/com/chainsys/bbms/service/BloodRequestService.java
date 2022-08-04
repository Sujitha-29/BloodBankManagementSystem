package com.chainsys.bbms.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.bbms.dto.BloodRequestBloodTransactionDTO;
import com.chainsys.bbms.model.BloodRequest;
import com.chainsys.bbms.model.BloodTransaction;
import com.chainsys.bbms.repository.BloodRequestRepository;
import com.chainsys.bbms.repository.BloodTransactionRepository;

@Service
public class BloodRequestService 
{
	@Autowired
	private BloodRequestRepository bloodRequestRepository;
	@Autowired
	private BloodTransactionRepository bloodTransactionRepository;
	
	public List<BloodRequest> getBloodRequest()
	{
		List<BloodRequest> brlist = bloodRequestRepository.findAll();
		return brlist;
	}
	public BloodRequest save(BloodRequest br)
	{
		return bloodRequestRepository.save(br);
	}
	public BloodRequest findById(int id)
	{
		return bloodRequestRepository.findById(id);
	}
	public void deleteById(int id)
	{
		bloodRequestRepository.deleteById(id);
	}
	
	public  BloodRequestBloodTransactionDTO getBloodRequestAndTransactionDetail(int id)
	{
		BloodRequest bloodRequest=findById(id);
		BloodRequestBloodTransactionDTO dto=new BloodRequestBloodTransactionDTO();
		dto.setBloodrequest(bloodRequest);
		List<BloodTransaction> transactionList=bloodTransactionRepository.findByBloodreqRequestId(id);
		Iterator<BloodTransaction> itr=transactionList.iterator();
		while(itr.hasNext())
		{
			dto.addBloodRequestBloodTransactionDetail((BloodTransaction)itr.next());
		}
		return dto;	
	}
}
