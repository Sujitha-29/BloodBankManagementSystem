package com.chainsys.bbms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.bbms.model.PersonDetails;
import com.chainsys.bbms.repository.PersonDetailsRepository;

@Service
public class PersonDetailsService {
	@Autowired
	private PersonDetailsRepository pdrepo;
	
	public List<PersonDetails> getPersons()
	{
		List<PersonDetails> personlist=pdrepo.findAll();
		return personlist;		
	}
	public PersonDetails save(PersonDetails pd)
	{
		return pdrepo.save(pd);
	}
	public PersonDetails findById(int id)
	{
		return pdrepo.findById(id);
	}
	public void deleteById(int id)
	{
		pdrepo.deleteById(id);
	}

}
