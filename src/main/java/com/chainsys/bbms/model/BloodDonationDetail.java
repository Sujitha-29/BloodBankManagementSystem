package com.chainsys.bbms.model;

import java.sql.Date;

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
	private int donationtransid;
	@Column(name="person_id ")
	private int personid ;
	@Column(name="donation_date")
	private Date donationdate;
	@Column(name="Health_Condition")
	private String healthcondition;
	@Column(name="quantity")
	private String quantity;
	public int getDonationtransid() {
		return donationtransid;
	}
	public void setDonationtransid(int donationtransid) {
		this.donationtransid = donationtransid;
	}
	public int getPersonid() {
		return personid;
	}
	public void setPersonid(int personid) {
		this.personid = personid;
	}
	public Date getDonationdate() {
		return donationdate;
	}
	public void setDonationdate(Date donationdate) {
		this.donationdate = donationdate;
	}
	public String getHealthcondition() {
		return healthcondition;
	}
	public void setHealthcondition(String healthcondition) {
		this.healthcondition = healthcondition;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
		
}
