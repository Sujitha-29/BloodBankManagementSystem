package com.chainsys.bbms.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
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
	@Column(name="recipient_name")
	private String recipientName;
	@Column(name="recipient_phone_no")
	private long recipientPhoneNo;
	@Column(name="transaction_date")
	private Date transactionDate;
	@Column(name="quantity")
	private String quantity;
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
