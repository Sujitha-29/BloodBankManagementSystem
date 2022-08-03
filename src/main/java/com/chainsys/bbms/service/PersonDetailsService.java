package com.chainsys.bbms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.bbms.model.PersonDetail;
import com.chainsys.bbms.repository.PersonDetailsRepository;

@Service
public class PersonDetailsService {
	@Autowired
	private PersonDetailsRepository personDetailRepository;
	
	public List<PersonDetail> getPersons()
	{
		List<PersonDetail> personlist= personDetailRepository.findAll();
		return personlist;		
	}
	public PersonDetail save(PersonDetail pd)
	{
		return  personDetailRepository.save(pd);
	}
	public PersonDetail findById(int id)
	{
		return  personDetailRepository.findById(id);
	}
	public void deleteById(int id)
	{
		 personDetailRepository.deleteById(id);
	}

}
