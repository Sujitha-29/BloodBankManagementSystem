package com.chainsys.bbms.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.bbms.model.BloodRequest;

public interface BloodRequestRepository extends CrudRepository<BloodRequest,Integer>
{
	BloodRequest findById(int id);
	BloodRequest save(BloodRequest bloodreq);
	void deleteById(int requestId);
	List<BloodRequest> findAll();
	
	List<BloodRequest> findByBloodgroupBloodGroupId(int id);
	
	
}
