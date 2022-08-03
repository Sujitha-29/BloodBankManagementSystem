package com.chainsys.bbms.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.bbms.dto.BloodGroupPersonDetailDTO;
import com.chainsys.bbms.model.BloodGroupDetail;
import com.chainsys.bbms.model.PersonDetail;
import com.chainsys.bbms.repository.BloodGroupRepository;
import com.chainsys.bbms.repository.PersonDetailsRepository;

@Service
public class BloodGroupService 
{
	@Autowired
	private BloodGroupRepository bloodGroupRepository;
	@Autowired
	private PersonDetailsRepository personDetailRepository;
	public List<BloodGroupDetail> getBloodGroup()
	{
		List<BloodGroupDetail> bglist = bloodGroupRepository.findAll();
		return bglist;
	}
	public BloodGroupDetail save(BloodGroupDetail bd)
	{
		return bloodGroupRepository.save(bd);
	}
	public BloodGroupDetail findById(int id)
	{
		return bloodGroupRepository.findById(id);
	}
	public void deleteById(int id)
	{
		bloodGroupRepository.deleteById(id);
	}
	public BloodGroupPersonDetailDTO getBloodGroupPersonDetail(int id)
	{
		BloodGroupDetail bloodGroup=findById(id);
		BloodGroupPersonDetailDTO dto= new BloodGroupPersonDetailDTO();
		dto.setBloodgroup(bloodGroup);
		List<PersonDetail> personlist= personDetailRepository.findByBloodGroupId(id); // method created in repo
		Iterator<PersonDetail> itr = personlist.iterator();
		while(itr.hasNext())
		{
			dto.addbloodgroupandpersonlist((PersonDetail)itr.next());
		}
		return dto;
		
	}

}
