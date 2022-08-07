package com.chainsys.bbms.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="blood_donation_details")
public class BloodDonationDetail 
{
	@Id
	@Column(name="donation_trans_id")
	@Min(value=300, message="Please enter the valid id")
	@Max(value=399, message="Please enter the minmum value")
	private int donationTransId;
	@Column(name="person_id")
    @Min(value=200,message="Please enter the valid id")
	@Max(value=200,message="Please enter the minmum value")
	private int personId ;
	@Column(name="donation_date")
	@NotNull(message="Donation Date may not be null")
	private Date donationDate;
	@Column(name="Health_Condition")
	@NotNull(message="Health Condition may not be null")
	private String healthCondition;
	@Column(name="quantity")
	@NotNull(message="Quantity may not be null")
	private String quantity;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="person_id",nullable = false,insertable = false,updatable = false)
	private PersonDetail person;
	
	public PersonDetail getPerson() {
		return person;
	}
	public void setPerson(PersonDetail person) {
		this.person = person;
	}
	
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
