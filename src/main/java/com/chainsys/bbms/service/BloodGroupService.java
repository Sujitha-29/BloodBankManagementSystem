package com.chainsys.bbms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.bbms.model.BloodGroupDetail;
import com.chainsys.bbms.repository.BloodGroupRepository;

@Service
public class BloodGroupService 
{
	@Autowired
	private BloodGroupRepository bgrepo;
	public List<BloodGroupDetail> getBloodGroup()
	{
		List<BloodGroupDetail> bglist = bgrepo.findAll();
		return bglist;
	}
	public BloodGroupDetail save(BloodGroupDetail bd)
	{
		return bgrepo.save(bd);
	}
	public BloodGroupDetail findById(int id)
	{
		return bgrepo.findById(id);
	}
	public void deleteById(int id)
	{
		bgrepo.deleteById(id);
	}

}
