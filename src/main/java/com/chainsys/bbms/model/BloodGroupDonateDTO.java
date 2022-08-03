package com.chainsys.bbms.model;

import java.util.ArrayList;
import java.util.List;

public class BloodGroupDonateDTO {
	private BloodGroupDetail bloodGroupDetail;
	private List<BloodDonationDetail> bloodDonationDetaillist = new ArrayList<BloodDonationDetail>();
	public BloodGroupDetail getBloodGroupDetail() {
		return bloodGroupDetail;
	}
	public void setBloodGroupDetail(BloodGroupDetail bloodGroupDetail) {
		this.bloodGroupDetail = bloodGroupDetail;
	}
	public List<BloodDonationDetail> getBloodDonationDetail() {
		return bloodDonationDetaillist;
	}
//	public void setBloodDonationDetail(List<BloodDonationDetail> bloodDonationDetail) {
//		this.bloodDonationDetail = bloodDonationDetail;
//	}
	public void addBloodDonationDetail(BloodDonationDetail bd)
	{
		bloodDonationDetaillist.add(bd);
	}
	
	

}
