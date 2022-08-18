package com.chainsys.bbms.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "blood_request")
public class BloodRequest {
	@Id
	@Column(name = "request_id")
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "req_id")
	@SequenceGenerator(name = "req_id", sequenceName = "req_id", allocationSize = 1)
	private int requestId;

	@Column(name = "recipient_name")

	private String recipientName;

	@Column(name = "recipient_phone_no")
	private long recipientPhoneNo;

	@Column(name = "hospital_name")
	private String hospitalName;

	@Column(name = "blood_group_id")
	private int bloodGroupId;

	@Column(name = "request_date")
	private Date requestDate;

	@Column(name = "quantity")
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

	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "blood_group_id", nullable = false, insertable = false, updatable = false)
	private BloodGroupDetail bloodgroup;

	public BloodGroupDetail getBloodgroup() {
		return bloodgroup;
	}

	public void setBloodgroup(BloodGroupDetail bloodgroup) {
		this.bloodgroup = bloodgroup;
	}

	
	@OneToOne(mappedBy = "bloodrequest", fetch = FetchType.LAZY)
	private BloodTransaction bloodTransaction;

	public BloodTransaction getBloodTransaction() {
		return bloodTransaction;
	}

	public void setBloodTransaction(BloodTransaction bloodTransaction) {
		this.bloodTransaction = bloodTransaction;
	}
}
