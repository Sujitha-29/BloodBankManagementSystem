package com.chainsys.bbms.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="persons_details")
public class PersonDetails 
{
	@Id	
	@Column(name="person_id")
	private int person_id;
	@Column(name="person_name")
	private String person_name; 
	@Column(name="dob")
	private  Date dob;
	@Column(name="Blood_group_id")
	private int blood_group_id;
	@Column(name="phone_no ")
	private long phone_no;
	@Column(name="Gender ")
	private String gender;
	@Column(name="Address")
	private String address;
	@Column(name="Email_id")
	private String email_id;
	
	public int getPerson_id() {
		return person_id;
	}
	public void setPerson_id(int person_id) {
		this.person_id = person_id;
	}
	public String getPerson_name() {
		return person_name;
	}
	public void setPerson_name(String person_name) {
		this.person_name = person_name;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public int getBlood_group_id() {
		return blood_group_id;
	}
	public void setBlood_group_id(int blood_group_id) {
		this.blood_group_id = blood_group_id;
	}
	public long getPhone_no() {
		return phone_no;
	}
	public void setPhone_no(long phone_no) {
		this.phone_no = phone_no;
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
	public String getEmail_id() {
		return email_id;
	}
	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}
}
