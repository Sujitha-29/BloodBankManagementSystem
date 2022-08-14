package com.chainsys.bbms.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;



@Entity
@Table(name="blood_transaction")
public class BloodTransaction 
{
	@Id
	@Column(name="blood_transaction_id")
	private int bloodTransactionId;
	
	@Column(name="request_id")
	private int requestId;
	
	@Column(name="transaction_date")
	private Date transactionDate;
	
	@Column(name="quantity")
	private int quantityInUnits;
	
	@Column(name="status")
	private String status;
	
	
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
	public int getQuantityInUnits() {
		return quantityInUnits;
	}
	public void setQuantityInUnits(int quantityInUnits) {
		this.quantityInUnits = quantityInUnits;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
	
	
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
	
	
}
