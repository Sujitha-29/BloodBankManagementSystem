package com.chainsys.bbms.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="blood_donation_details")
public class BloodDonationDetail 
{
	@Id
	@Column(name="donation_trans_id")
	private int donationTransId;
	
	@Column(name="person_id")
	private int personId ;
	
	@Column(name="donation_date")
	private Date donationDate;
	
	@Column(name="Health_Condition")
	private String healthCondition;
	
	@Column(name="quantity")
	private int quantityInUnits;
	
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

	public int getQuantityInUnits() {
		return quantityInUnits;
	}

	public void setQuantityInUnits(int quantityInUnits) {
		this.quantityInUnits = quantityInUnits;
	}			
}
