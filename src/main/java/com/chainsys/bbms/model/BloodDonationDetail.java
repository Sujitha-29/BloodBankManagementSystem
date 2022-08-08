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
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

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
	@NotEmpty(message = "*Please enter Health Condition")
    @Pattern(regexp = "^[a-zA-Z]*$", message = "*Value should be in Alphabets ")
	private String healthCondition;
	
	@Column(name="quantity")
	@Size(max = 20, min = 3, message = "*Quantity length should be 3 to 20")
    @NotBlank(message = "*Quantity can't be Empty")
    @Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid Quantity ")
	private int quantity;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="person_id",nullable = false,insertable = false,updatable = false)
	private PersonDetail person;

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

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public PersonDetail getPerson() {
		return person;
	}

	public void setPerson(PersonDetail person) {
		this.person = person;
	}
	
	
			
}
