package com.chainsys.bbms.pojo;

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
	private int donation_trans_id;
	@Column(name="person_id ")
	private int person_id ;
	@Column(name="donation_date")
	private Date donation_date;
	@Column(name="Health_Condition")
	private String health_condition;
	@Column(name="quantity")
	private int quantity;
	
	public int getDonation_trans_id() {
		return donation_trans_id;
	}
	public void setDonation_trans_id(int donation_trans_id) {
		this.donation_trans_id = donation_trans_id;
	}
	public int getPerson_id() {
		return person_id;
	}
	public void setPerson_id(int person_id) {
		this.person_id = person_id;
	}
	public Date getDonation_date() {
		return donation_date;
	}
	public void setDonation_date(Date donation_date) {
		this.donation_date = donation_date;
	}
	public String getHealth_condition() {
		return health_condition;
	}
	public void setHealth_condition(String health_condition) {
		this.health_condition = health_condition;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
}
