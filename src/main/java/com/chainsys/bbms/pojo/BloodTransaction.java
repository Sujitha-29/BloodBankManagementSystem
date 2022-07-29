package com.chainsys.bbms.pojo;

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
	private int blood_transaction_id;
	@Column(name="request_id")
	private int request_id;
	@Column(name="transaction_date")
	private Date transaction_date;
	@Column(name="quantity")
	private int quantity;
	@Column(name="status")
	private String status;
	
	public int getBlood_transaction_id() {
		return blood_transaction_id;
	}
	public void setBlood_transaction_id(int blood_transaction_id) {
		this.blood_transaction_id = blood_transaction_id;
	}
	public int getRequest_id() {
		return request_id;
	}
	public void setRequest_id(int request_id) {
		this.request_id = request_id;
	}
	public Date getTransaction_date() {
		return transaction_date;
	}
	public void setTransaction_date(Date transaction_date) {
		this.transaction_date = transaction_date;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}	
}
