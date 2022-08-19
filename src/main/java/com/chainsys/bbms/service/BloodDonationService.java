package com.chainsys.bbms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.bbms.businesslogic.Logic;
import com.chainsys.bbms.model.BloodDonationDetail;
import com.chainsys.bbms.model.BloodGroupDetail;
import com.chainsys.bbms.model.PersonDetail;
import com.chainsys.bbms.repository.BloodDonationRepository;

@Service
public class BloodDonationService 
{
	@Autowired
	private BloodDonationRepository bloodDonationdRepository;
	
	@Autowired
	private PersonDetailsService personDetailsService;
	
	@Autowired
	private BloodGroupService bloodGroupService;
	
	public List<BloodDonationDetail> getallDonationDetail()
	{
		return bloodDonationdRepository.findAll();		
	}
	
	public BloodDonationDetail save(BloodDonationDetail bd)
	{
		BloodDonationDetail bloodDonation =bloodDonationdRepository.save(bd);
	    PersonDetail personDetail=personDetailsService.findById(bd.getPersonId());
	    BloodGroupDetail bloodGroupDetail=bloodGroupService.findById(personDetail.getBloodGroupId());
	    int quantity=Logic.addQuantity(bloodGroupDetail.getStockInUnits(), bd.getQuantityInUnits());
	    bloodGroupDetail.setStockInUnits(quantity);
		bloodGroupService.save(bloodGroupDetail);
		return bloodDonation;
		
	}
	public BloodDonationDetail findById(int id)
	{
		return bloodDonationdRepository.findById(id);
	}
	public void deleteById(int id)
	{
		bloodDonationdRepository.deleteById(id);
	}
	public List<BloodDonationDetail> findBloodDonationDetailBypersonId(int id){
		return bloodDonationdRepository.findByPersonIdOrderByDonationDateDesc(id);
	}

}
