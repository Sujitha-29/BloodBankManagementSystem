package com.chainsys.bbms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.bbms.model.BloodTransaction;
import com.chainsys.bbms.repository.BloodTransactionRepository;

@Service
public class BloodTransactionService 
{
	@Autowired
	private BloodTransactionRepository bloodTransactionRepository;
	public List<BloodTransaction> getBloodTransaction()
	{
		List<BloodTransaction> translist=bloodTransactionRepository.findAll();
		return translist;
	}
	public BloodTransaction save(BloodTransaction bt)
	{
		return bloodTransactionRepository.save(bt);
	}
	public BloodTransaction findById(int id)
	{
		return bloodTransactionRepository.findById(id);
	}
	public void deleteById(int id)
	{
		bloodTransactionRepository.deleteById(id);
	}

}
