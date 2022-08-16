package com.chainsys.bbms.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.bbms.model.PersonDetail;

public interface PersonDetailsRepository extends CrudRepository<PersonDetail,Integer>
{
	PersonDetail findById(int id);
	PersonDetail save(PersonDetail person);
	void deleteById(int personId);
	List<PersonDetail> findAll();
	List<PersonDetail> findByBloodGroupId(int id);
}
