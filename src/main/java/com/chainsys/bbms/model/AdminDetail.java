package com.chainsys.bbms.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "admin_details")
public class AdminDetail {
	@Id
	@Column(name = "admin_id")
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "adminns_id")
	@SequenceGenerator(name = "adminns_id", sequenceName = "adminns_id", allocationSize = 1)
	private int adminId;

	@Column(name = "admin_name")
	private String adminName;

	@Column(name = "admin_password")
	private String adminPassword;

	@Column(name = "date_of_joining")
	private Date dateOfJoining;

	@Column(name = "designation")
	private String designation;

	

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

	
}
