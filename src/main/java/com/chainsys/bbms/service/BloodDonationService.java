package com.chainsys.bbms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.bbms.model.BloodDonationDetail;
import com.chainsys.bbms.repository.BloodDonationRepository;

@Service
public class BloodDonationService 
{
	@Autowired
	private BloodDonationRepository bloodDonationdRepository;
	
	public List<BloodDonationDetail> getallDonationDetail()
	{
		List<BloodDonationDetail> donationlist = bloodDonationdRepository.findAll();
		return donationlist;		
	}
	
	public BloodDonationDetail save(BloodDonationDetail bd)
	{
		return bloodDonationdRepository.save(bd);
	}
	public BloodDonationDetail findById(int id)
	{
		return bloodDonationdRepository.findById(id);
	}
	public void deleteById(int id)
	{
		bloodDonationdRepository.deleteById(id);
	}

}
