package com.chainsys.bbms.dto;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.bbms.model.BloodRequest;
import com.chainsys.bbms.model.BloodTransaction;

public class BloodRequestBloodTransactionDTO 
{
	private BloodRequest bloodrequest;
	private List<BloodTransaction> bloodTransaction = new ArrayList<BloodTransaction>();
	
	public BloodRequest getBloodrequest() {
		return bloodrequest;
	}
	public void setBloodrequest(BloodRequest bloodrequest) {
		this.bloodrequest = bloodrequest;
	}
	public List<BloodTransaction> getBloodTransaction() {
		return bloodTransaction;
	}
	public void addBloodRequestBloodTransactionDetail(BloodTransaction bloodtransaction)
	{
		bloodTransaction.add(bloodtransaction);		
	}
	

}
