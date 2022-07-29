package com.chainsys.bbms.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="blood_group_details")
public class BloodGroupDetail 
{
	@Id
	@Column(name="Blood_group")
	private String blood_group ;
	@Column(name="Stock_in_hand")
	private int stock_in_hand ; 
	
	public String getBlood_group() {
		return blood_group;
	}
	public void setBlood_group(String blood_group) {
		this.blood_group = blood_group;
	}
	public int getStock_in_hand() {
		return stock_in_hand;
	}
	public void setStock_in_hand(int stock_in_hand) {
		this.stock_in_hand = stock_in_hand;
	}
	
}
