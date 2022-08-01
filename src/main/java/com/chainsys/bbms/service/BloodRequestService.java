package com.chainsys.bbms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.bbms.model.BloodRequest;
import com.chainsys.bbms.repository.BloodRequestRepository;

@Service
public class BloodRequestService 
{
	@Autowired
	private BloodRequestRepository bloodrequestrepo;
	public List<BloodRequest> getBloodRequest()
	{
		List<BloodRequest> brlist = bloodrequestrepo.findAll();
		return brlist;
	}
	public BloodRequest save(BloodRequest br)
	{
		return bloodrequestrepo.save(br);
	}
	public BloodRequest findById(int id)
	{
		return bloodrequestrepo.findById(id);
	}
	public void deleteById(int id)
	{
		bloodrequestrepo.deleteById(id);
	}
	
	

}
