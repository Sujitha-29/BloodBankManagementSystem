package com.chainsys.bbms.dto;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.bbms.model.BloodGroupDetail;
import com.chainsys.bbms.model.PersonDetail;

public class BloodGroupPersonDetailDTO {
	@Autowired
	private BloodGroupDetail bloodgroup;
	private List<PersonDetail> personlist = new ArrayList<PersonDetail>();

	public BloodGroupDetail getBloodgroup() {
		return bloodgroup;
	}

	public void setBloodgroup(BloodGroupDetail bloodgroup) {
		this.bloodgroup = bloodgroup;
	}

	public List<PersonDetail> getPersonlist() {
		return personlist;
	}

	public void addbloodgroupandpersonlist(PersonDetail doc) {
		personlist.add(doc);
	}
}
