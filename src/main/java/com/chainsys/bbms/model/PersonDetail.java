package com.chainsys.bbms.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;


@Entity
@Table(name="persons_details")
public class PersonDetail 
{
	@Id	
	@Column(name="person_id")
	@Min(value=200, message="Please enter the valid id")
	@Max(value=299, message="Please enter the minimum value")
	private int personId;
	@Column(name="person_name")
	@NotNull(message="Person Name may not be null")
	private String personName; 
	@Column(name="dob")
	@NotNull(message="Date Of Birth may not be null")
	private  Date dob;
	@Column(name="Blood_group_id")
	@Min(value=100, message="Please enter the valid id")
	@Max(value=199, message="Please enter the minimum value")
	private int bloodGroupId;
	@Column(name="phone_no ")
	@NotNull(message="Phone Number may not be null")
	private long phoneNo;
	@Column(name="Gender ")
	@NotNull(message="Gender may not be null")
	private String gender;
	@Column(name="Address")
	@NotNull(message="Address may not be null")
	private String address;
	@Column(name="Email_id")
	@NotNull(message="Email Id may not be null")
	private String emailId;
	
	//blood group
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="Blood_group_id",nullable =false,insertable =false,updatable =false)
	private BloodGroupDetail bloodgroup; // pk class
	public BloodGroupDetail getBloodgroup() {
		return bloodgroup;
	}
	public void setBloodgroup(BloodGroupDetail bloodgroup) {
		this.bloodgroup = bloodgroup;
	}
	// blood donation
	@OneToMany(mappedBy="person",fetch=FetchType.LAZY)
	private List<BloodDonationDetail> donationDetail;
	public List<BloodDonationDetail> getDonationDetail() {
		return donationDetail;
	}
	public void setDonationDetail(List<BloodDonationDetail> donationDetail) {
		this.donationDetail = donationDetail;
	}
	
	public int getPersonId() {
		return personId;
	}
	public void setPersonId(int personId) {
		this.personId = personId;
	}
	public String getPersonName() {
		return personName;
	}
	public void setPersonName(String personName) {
		this.personName = personName;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public int getBloodGroupId() {
		return bloodGroupId;
	}
	public void setBloodGroupId(int bloodGroupId) {
		this.bloodGroupId = bloodGroupId;
	}
	public long getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(long phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}		
}
