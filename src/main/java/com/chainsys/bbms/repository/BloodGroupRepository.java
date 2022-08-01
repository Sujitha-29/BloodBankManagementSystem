package com.chainsys.bbms.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.bbms.model.BloodGroupDetail;

public interface BloodGroupRepository extends CrudRepository<BloodGroupDetail,Integer>
{
	BloodGroupDetail findById(int id);
	BloodGroupDetail save(BloodGroupDetail bloodgroup);
	void deleteById(int blood_group_id);
	List<BloodGroupDetail> findAll();
	

}
