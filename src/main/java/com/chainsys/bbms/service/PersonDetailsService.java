package com.chainsys.bbms.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.bbms.dto.PersonDetailBloodDonationDetailDTO;
import com.chainsys.bbms.model.BloodDonationDetail;
import com.chainsys.bbms.model.PersonDetail;
import com.chainsys.bbms.repository.BloodDonationRepository;
import com.chainsys.bbms.repository.PersonDetailsRepository;

@Service
public class PersonDetailsService {
	@Autowired
	private PersonDetailsRepository personDetailRepository;
	@Autowired
	private BloodDonationRepository bloodDonationRepository;
	
	public List<PersonDetail> getPersons()
	{
		return personDetailRepository.findAll();		
	}
	public PersonDetail save(PersonDetail pd)
	{
		return  personDetailRepository.save(pd);
	}
	public PersonDetail findById(int id)
	{
		return  personDetailRepository.findById(id);
	}
	public PersonDetail getByEmailId(String email)
	{
		return  personDetailRepository.findByEmailId(email);
	}
	
	public PersonDetail getByPhone(Long phone)
	{
		return  personDetailRepository.findByPhoneNo(phone);
	}
	
	public void deleteById(int id)
	{
		 personDetailRepository.deleteById(id);
	}
	public PersonDetailBloodDonationDetailDTO getPersonDonationDetails(int id)
	{ 
		PersonDetail person=findById(id);
		PersonDetailBloodDonationDetailDTO dto=new PersonDetailBloodDonationDetailDTO();
		dto.setPersonDetail(person);
		List<BloodDonationDetail> donationList=bloodDonationRepository.findBloodDonationDetailByPersonId(id);
		Iterator<BloodDonationDetail> itr =donationList.iterator();
		while(itr.hasNext())
		{
			dto.addPersonDetailAndBlooddonationDetail(itr.next());
		}
		return dto;		
	}

}