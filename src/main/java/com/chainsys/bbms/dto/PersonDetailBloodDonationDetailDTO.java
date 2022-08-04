package com.chainsys.bbms.dto;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.bbms.model.BloodDonationDetail;
import com.chainsys.bbms.model.PersonDetail;

public class PersonDetailBloodDonationDetailDTO {
	@Autowired
	private PersonDetail personDetail;
	private List<BloodDonationDetail> donationList=new ArrayList<BloodDonationDetail>();
	public PersonDetail getPersonDetail() {
		return personDetail;
	}
	public void setPersonDetail(PersonDetail personDetail) {
		this.personDetail = personDetail;
	}
	public List<BloodDonationDetail> getDonationList() {
		return donationList;
	}
	public void addPersonDetailAndBlooddonationDetail(BloodDonationDetail bloodDonation)
	{
		donationList.add(bloodDonation);
		
	}

}
