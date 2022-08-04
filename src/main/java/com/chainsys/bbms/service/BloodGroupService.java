package com.chainsys.bbms.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.bbms.dto.BloodGroupBloodRequestDTO;
import com.chainsys.bbms.dto.BloodGroupPersonDetailDTO;
import com.chainsys.bbms.model.BloodGroupDetail;
import com.chainsys.bbms.model.BloodRequest;
import com.chainsys.bbms.model.PersonDetail;
import com.chainsys.bbms.repository.BloodGroupRepository;
import com.chainsys.bbms.repository.BloodRequestRepository;
import com.chainsys.bbms.repository.PersonDetailsRepository;

@Service
public class BloodGroupService 
{
	@Autowired
	private BloodGroupRepository bloodGroupRepository;
	@Autowired
	private PersonDetailsRepository personDetailRepository;
	@Autowired
	private BloodRequestRepository bloodRequestRepository;
	
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
		List<PersonDetail> personlist= personDetailRepository.findByBloodGroupId(id); // method created in repo in FK
		Iterator<PersonDetail> itr = personlist.iterator();
		while(itr.hasNext())
		{
			dto.addBloodGroupAndPersonList((PersonDetail)itr.next());
		}
		return dto;
	}
	
	public  BloodGroupBloodRequestDTO getBloodGroupRequestDetail(int id)
	{
		BloodGroupDetail bloodGroup=findById(id);
		BloodGroupBloodRequestDTO dto=new BloodGroupBloodRequestDTO();
		dto.setBloodgroup(bloodGroup);
		List<BloodRequest> reqlist=bloodRequestRepository.findBloodRequestByBloodGroupId(id);
		Iterator<BloodRequest> itr = reqlist.iterator();
		while(itr.hasNext())
		{
			dto.addBloodGroupAndRequestList((BloodRequest)itr.next());
		}
		return dto;		
	}

}
