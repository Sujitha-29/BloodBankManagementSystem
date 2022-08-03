package com.chainsys.bbms.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="blood_group_details")
public class BloodGroupDetail 
{
	@Id
	@Column(name="blood_group_id")
	private int bloodGroupId;		
	@Column(name="Blood_group")
	private String bloodGroup;
	@Column(name="Stock_in_hand")
	private String stockInHand ;
	
	@OneToMany(mappedBy ="bloodgroup",fetch=FetchType.LAZY)
	private List<PersonDetail> person; // fk class
	public List<PersonDetail> getPerson() {
		return person;
	}
	public void setPerson(List<PersonDetail> person) {
		this.person = person;
	}
	public int getBloodGroupId() {
		return bloodGroupId;
	}
	public void setBloodGroupId(int bloodGroupId) {
		this.bloodGroupId = bloodGroupId;
	}
	public String getBloodGroup() {
		return bloodGroup;
	}
	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}
	public String getStockInHand() {
		return stockInHand;
	}
	public void setStockInHand(String stockInHand) {
		this.stockInHand = stockInHand;
	}
}
