package com.chainsys.bbms.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="blood_donation_details")
public class BloodDonationDetail 
{
	@Id
	@Column(name="donation_trans_id")
	private int donationTransId;
	@Column(name="person_id ")
	private int personId ;
	@Column(name="donation_date")
	private Date donationDate;
	@Column(name="Health_Condition")
	private String healthCondition;
	@Column(name="quantity")
	private String quantity;
	public int getDonationTransId() {
		return donationTransId;
	}
	public void setDonationTransId(int donationTransId) {
		this.donationTransId = donationTransId;
	}
	public int getPersonId() {
		return personId;
	}
	public void setPersonId(int personId) {
		this.personId = personId;
	}
	public Date getDonationDate() {
		return donationDate;
	}
	public void setDonationDate(Date donationDate) {
		this.donationDate = donationDate;
	}
	public String getHealthCondition() {
		return healthCondition;
	}
	public void setHealthCondition(String healthCondition) {
		this.healthCondition = healthCondition;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
			
}
