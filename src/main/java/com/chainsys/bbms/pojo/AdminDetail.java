package com.chainsys.bbms.pojo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="admin_details")
public class AdminDetail 
{
	@Id
	@Column(name="admin_id")
	private int admin_id;
	@Column(name="admin_name")
	private String admin_name;
	@Column(name="admin_password")
	private String admin_password;
	@Column(name="date_of_joining")
	private Date date_of_joining;
	@Column(name="designation")
	private String designation;
	@Column(name="password_modified_date")
	private Date password_modified_date;
	
	public int getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(int admin_id) {
		this.admin_id = admin_id;
	}
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}
	public String getAdmin_password() {
		return admin_password;
	}
	public void setAdmin_password(String admin_password) {
		this.admin_password = admin_password;
	}
	public Date getDate_of_joining() {
		return date_of_joining;
	}
	public void setDate_of_joining(Date date_of_joining) {
		this.date_of_joining = date_of_joining;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public Date getPassword_modified_date() {
		return password_modified_date;
	}
	public void setPassword_modified_date(Date password_modified_date) {
		this.password_modified_date = password_modified_date;
	}
}
