package com.chainsys.bbms.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="blood_group_details")
public class BloodGroupDetail 
{
	@Id
	@Column(name="blood_group_id")
	private int blood_group_id;		
	@Column(name="Blood_group")
	private String blood_group;
	@Column(name="Stock_in_hand")
	private int stock_in_hand ; 
	
	public int getBlood_group_id() {
		return blood_group_id;
	}
	public void setBlood_group_id(int blood_group_id) {
		this.blood_group_id = blood_group_id;
	}
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
