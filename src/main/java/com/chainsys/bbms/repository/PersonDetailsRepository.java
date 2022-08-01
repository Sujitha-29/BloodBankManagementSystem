package com.chainsys.bbms.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.bbms.model.PersonDetails;

public interface PersonDetailsRepository extends CrudRepository<PersonDetails,Integer>
{
	PersonDetails findById(int id);
	PersonDetails save(PersonDetails person);
	void deleteById(int person_id);
	List<PersonDetails> findAll();
}
