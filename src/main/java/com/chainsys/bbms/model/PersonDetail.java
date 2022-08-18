package com.chainsys.bbms.model;

import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;


@Entity
@Table(name="persons_details")
public class PersonDetail 
{
	@Id	
	@Column(name="person_id")
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "persons_id")
    @SequenceGenerator(name = "persons_id", sequenceName = "persons_id",  allocationSize = 1)
	private int personId;
	
	@Column(name="person_name")
	private String personName; 
	
	@Column(name="dob")
	private  Date dob;
	
	@Column(name="Blood_group_id")
	private int bloodGroupId;
	
	@Column(name="phone_no ")
	private long phoneNo;
	
	@Column(name="Gender ")
	private String gender;
	
	@Column(name="Address")
	private String address;
	
	@Column(name="Email_id")
	private String emailId;
	
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="Blood_group_id",nullable =false,insertable =false,updatable =false)
	private BloodGroupDetail bloodgroup; 
	public BloodGroupDetail getBloodgroup() {
		return bloodgroup;
	}
	public void setBloodgroup(BloodGroupDetail bloodgroup) {
		this.bloodgroup = bloodgroup;
	}
	
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
