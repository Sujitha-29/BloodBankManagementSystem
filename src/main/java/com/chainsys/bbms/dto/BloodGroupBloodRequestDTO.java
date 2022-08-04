package com.chainsys.bbms.dto;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.bbms.model.BloodGroupDetail;
import com.chainsys.bbms.model.BloodRequest;

public class BloodGroupBloodRequestDTO {
	@Autowired
	private BloodGroupDetail bloodgroup;
	private List<BloodRequest> requestlist = new ArrayList<BloodRequest>();
	public BloodGroupDetail getBloodgroup() {
		return bloodgroup;
	}
	public void setBloodgroup(BloodGroupDetail bloodgroup) {
		this.bloodgroup = bloodgroup;
	}
	public List<BloodRequest> getRequestlist() {
		return requestlist;
	}
	public void addBloodGroupAndRequestList(BloodRequest bloodreq)
	{
		requestlist.add(bloodreq);	
	}
}
