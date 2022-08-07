package com.chainsys.bbms.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;


@Entity
@Table(name="blood_transaction")
public class BloodTransaction 
{
	@Id
	@Column(name="blood_transaction_id")
	@Min(value=400, message="Please enter the valid id")
	@Max(value=499, message="Please enter the minimum value")
	private int bloodTransactionId;
	@Column(name="request_id")
	@Min(value=500, message="Please enter the valid id")
	@Max(value=599, message="Please enter the minimum value")
	private int requestId;
	@Column(name="transaction_date")
	@NotNull(message="Transaction Date may not be null")
	private Date transactionDate;
	@Column(name="quantity")
	@NotNull(message="Quantity may not be null")
	private String quantity;
	@Column(name="status")
	@NotNull(message="Status may not be null")
	private String status;
	
	// Blood Request
	@OneToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="request_id",nullable = false,insertable = false, updatable = false)
	private BloodRequest bloodrequest;
	
	public BloodRequest getBloodrequest() {
		return bloodrequest;
	}
	public void setBloodrequest(BloodRequest bloodrequest) {
		this.bloodrequest = bloodrequest;
	}
	
	public int getBloodTransactionId() {
		return bloodTransactionId;
	}
	public void setBloodTransactionId(int bloodTransactionId) {
		this.bloodTransactionId = bloodTransactionId;
	}
	public int getRequestId() {
		return requestId;
	}
	public void setRequestId(int requestId) {
		this.requestId = requestId;
	}
	public Date getTransactionDate() {
		return transactionDate;
	}
	public void setTransactionDate(Date transactionDate) {
		this.transactionDate = transactionDate;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}	
}
