package com.chainsys.bbms.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.chainsys.bbms.model.BloodTransaction;
import com.chainsys.bbms.repository.BloodTransactionRepository;

@Service
public class BloodTransactionService 
{
	private BloodTransactionRepository btrepo;
	public List<BloodTransaction> getBloodTransaction()
	{
		List<BloodTransaction> translist=btrepo.findAll();
		return translist;
	}
	public BloodTransaction save(BloodTransaction bt)
	{
		return btrepo.save(bt);
	}
	public BloodTransaction findById(int id)
	{
		return btrepo.findById(id);
	}
	public void deleteById(int id)
	{
		btrepo.deleteById(id);
	}

}
