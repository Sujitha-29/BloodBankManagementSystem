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


@Entity
@Table(name="blood_request")
public class BloodRequest 
{
	@Id
	@Column(name="request_id")
	private int requestId;
	@Column(name="recipient_name")
	private String recipientName;
	@Column(name="recipient_phone_no")
	private long recipientPhoneNo;
	@Column(name="hospital_name")
	private String hospitalName;
	@Column(name="blood_group_id")
	private int bloodGroupId;
	@Column(name="request_date")
	private Date requestDate;
	@Column(name="quantity")
	private String quantity;
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
	// Blood Request
	@OneToMany(mappedBy="bloodreq", fetch=FetchType.LAZY)
	private List<BloodTransaction> bloodTransaction;
	
	public List<BloodTransaction> getBloodTransaction() {
		return bloodTransaction;
	}
	public void setBloodTransaction(List<BloodTransaction> bloodTransaction) {
		this.bloodTransaction = bloodTransaction;
	}
	
	
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
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}			
}
