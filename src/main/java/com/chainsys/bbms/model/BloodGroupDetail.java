package com.chainsys.bbms.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name="blood_group_details")
public class BloodGroupDetail 
{
	@Id
	@Column(name="blood_group_id")
	@Min(value=100, message="Please enter the valid id")
	@Max(value=199, message="Please enter the minimum value")
	private int bloodGroupId;	
	
	@Column(name="Blood_group")
	@NotEmpty(message = "*Please enter Blood Group")
    @Pattern(regexp = "^[a-zA-Z]*$", message = "*Value should be in Alphabets ")
	private String bloodGroup;
	
	@Column(name="Stock_in_Units")
	@Size(max = 20, min = 3, message = "*Stock In Hand length should be 3 to 20")
    @NotBlank(message = "*Stock In Hand can't be Empty")
    @Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid Stock In Hand ")
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

	//request
	@OneToMany(mappedBy="bloodgroup",fetch=FetchType.LAZY)
	private List<BloodRequest> request;
	
	public List<BloodRequest> getRequest() {
		return request;
	}
	public void setRequest(List<BloodRequest> request) {
		this.request = request;
	}
	
	// Person
	@OneToMany(mappedBy ="bloodgroup",fetch=FetchType.LAZY)
	private List<PersonDetail> person; // fk class
	public List<PersonDetail> getPerson() {
		return person;
	}
	public void setPerson(List<PersonDetail> person) {
		this.person = person;
	}
	
	
}
