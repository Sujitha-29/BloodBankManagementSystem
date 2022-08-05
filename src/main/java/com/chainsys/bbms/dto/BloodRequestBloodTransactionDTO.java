package com.chainsys.bbms.dto;


import com.chainsys.bbms.model.BloodRequest;
import com.chainsys.bbms.model.BloodTransaction;

public class BloodRequestBloodTransactionDTO 
{
	private BloodRequest bloodrequest;
	private BloodTransaction bloodTransaction;
	
	public BloodRequest getBloodrequest() {
		return bloodrequest;
	}
	public void setBloodrequest(BloodRequest bloodrequest) {
		this.bloodrequest = bloodrequest;
	}
	public BloodTransaction getBloodTransaction() {
		return bloodTransaction;
	}
	public void setBloodTransaction(BloodTransaction bloodTransaction) {
		this.bloodTransaction = bloodTransaction;
	}  
	
	
	
}
