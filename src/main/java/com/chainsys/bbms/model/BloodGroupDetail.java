package com.chainsys.bbms.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;



@Entity
@Table(name = "blood_group_details")
public class BloodGroupDetail {
	@Id
	@Column(name = "blood_group_id")
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "blood_id")
	@SequenceGenerator(name = "blood_id", sequenceName = "blood_id", allocationSize = 1)
	private int bloodGroupId;

	@Column(name = "Blood_group")
	private String bloodGroup;

	@Column(name = "Stock_in_Units")
	private int stockInUnits;

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

	public int getStockInUnits() {
		return stockInUnits;
	}

	public void setStockInUnits(int stockInUnits) {
		this.stockInUnits = stockInUnits;
	}

	
	@OneToMany(mappedBy = "bloodgroup", fetch = FetchType.LAZY)
	private List<BloodRequest> request;

	public List<BloodRequest> getRequest() {
		return request;
	}

	public void setRequest(List<BloodRequest> request) {
		this.request = request;
	}

	
	@OneToMany(mappedBy = "bloodgroup", fetch = FetchType.LAZY)
	private List<PersonDetail> person; 

	public List<PersonDetail> getPerson() {
		return person;
	}

	public void setPerson(List<PersonDetail> person) {
		this.person = person;
	}

}
