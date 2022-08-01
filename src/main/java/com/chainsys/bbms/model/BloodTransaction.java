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
	private int bloodtransactionid;
	@Column(name="request_id")
	private int requestid;
	@Column(name="transaction_date")
	private Date transactiondate;
	@Column(name="quantity")
	private String quantity;
	@Column(name="status")
	private String status;
	
	public int getBloodtransactionid() {
		return bloodtransactionid;
	}
	public void setBloodtransactionid(int bloodtransactionid) {
		this.bloodtransactionid = bloodtransactionid;
	}
	public int getRequestid() {
		return requestid;
	}
	public void setRequestid(int requestid) {
		this.requestid = requestid;
	}
	public Date getTransactiondate() {
		return transactiondate;
	}
	public void setTransactiondate(Date transactiondate) {
		this.transactiondate = transactiondate;
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
