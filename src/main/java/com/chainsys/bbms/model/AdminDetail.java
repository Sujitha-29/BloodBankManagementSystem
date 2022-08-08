package com.chainsys.bbms.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;


@Entity
@Table(name="admin_details")
public class AdminDetail 
{
	@Id
	@Column(name="admin_id")
	@Min(value=900, message="Please enter the valid id")
	@Max(value=999, message="Please enter the minimum value")
	private int adminId;
	
	@Column(name="admin_name")
	@Size(max = 20, min = 3, message = "*Name length should be 3 to 20")
    @NotBlank(message = "*Name can't be Empty")
    @Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid name ")
	private String adminName;
	
	
	@Column(name="admin_password")
	@Size(max = 20, min = 8, message = "*Password length should be 8 to 20")
    @NotBlank(message = "*Password can't be Empty")
    @Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid password ")
	private String adminPassword;
	
	@Column(name="date_of_joining")
	@NotNull(message="Date Of Joining may not be null")
	private Date dateOfJoining;
	
	@Column(name="designation")
	@NotEmpty(message = "*Please enter designation")
    @Pattern(regexp = "^[a-zA-Z]*$", message = "*Value should be in Alphabets ")
	private String designation;
	
	@Column(name="password_modified_date")
	@NotNull(message="Password Modified Date may not be null")
	private Date passwordModifiedDate;
	
	public int getAdminId() {
		return adminId;
	}
	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getAdminPassword() {
		return adminPassword;
	}
	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}
	public Date getDateOfJoining() {
		return dateOfJoining;
	}
	public void setDateOfJoining(Date dateOfJoining) {
		this.dateOfJoining = dateOfJoining;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public Date getPasswordModifiedDate() {
		return passwordModifiedDate;
	}
	public void setPasswordModifiedDate(Date passwordModifiedDate) {
		this.passwordModifiedDate = passwordModifiedDate;
	}	
}
