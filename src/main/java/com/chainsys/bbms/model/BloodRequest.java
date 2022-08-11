package com.chainsys.bbms.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;


@Entity
@Table(name="blood_request")
public class BloodRequest 
{
	@Id
	@Column(name="request_id")
	private int requestId;
	
	@Column(name="recipient_name")
	@Size(max = 20, min = 3, message = "*Name length should be 3 to 20")
    @NotBlank(message = "*Name can't be Empty")
    @Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid name ")
	private String recipientName;
	
	@Column(name="recipient_phone_no")
	@Digits(message = "*Invalid number.", integer = 10, fraction = 0)
	private long recipientPhoneNo;
	
	@Column(name="hospital_name")
	@Size(max = 20, min = 3, message = "*Hospital Name length should be 3 to 20")
    @NotBlank(message = "*Name can't be Empty")
    @Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid Hospital Name ")
	private String hospitalName;
	
	@Column(name="blood_group_id")
	@Min(value=100, message="Please enter the valid id")
	@Max(value=199, message="Please enter the minimum value")
	private int bloodGroupId;
	
	@Column(name="request_date")
	@NotNull(message="Request Date may not be null")
	private Date requestDate;
	
	@Column(name="quantity")
    @NotNull(message = "*Quantity can't be Empty")
	private int quantityInUnits;
	
	public int getRequestId() {
		return requestId;
	}
	public void setRequestId(int requestId) {
		this.requestId = requestId;
	}
	public String getRecipientName() {
		return recipientName;
	}
	public void setRecipientName(String recipientName) {
		this.recipientName = recipientName;
	}
	public long getRecipientPhoneNo() {
		return recipientPhoneNo;
	}
	public void setRecipientPhoneNo(long recipientPhoneNo) {
		this.recipientPhoneNo = recipientPhoneNo;
	}
	public String getHospitalName() {
		return hospitalName;
	}
	public void setHospitalName(String hospitalName) {
		this.hospitalName = hospitalName;
	}
	public int getBloodGroupId() {
		return bloodGroupId;
	}
	public void setBloodGroupId(int bloodGroupId) {
		this.bloodGroupId = bloodGroupId;
	}
	public Date getRequestDate() {
		return requestDate;
	}
	public void setRequestDate(Date requestDate) {
		this.requestDate = requestDate;
	}
	public int getQuantityInUnits() {
		return quantityInUnits;
	}
	public void setQuantityInUnits(int quantityInUnits) {
		this.quantityInUnits = quantityInUnits;
	}

	// Blood Group
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="blood_group_id",nullable = false,insertable = false,updatable = false)
	private BloodGroupDetail bloodgroup;
	public BloodGroupDetail getBloodgroup() {
		return bloodgroup;
	}
	public void setBloodgroup(BloodGroupDetail bloodgroup) {
		this.bloodgroup = bloodgroup;
	}
	 
	// Blood transaction
	@OneToOne(mappedBy="bloodrequest",fetch=FetchType.LAZY)
	private BloodTransaction bloodTransaction;                                           
	public BloodTransaction getBloodTransaction() {
		return bloodTransaction;
	}
	public void setBloodTransaction(BloodTransaction bloodTransaction) {
		this.bloodTransaction = bloodTransaction;
	}			
}
