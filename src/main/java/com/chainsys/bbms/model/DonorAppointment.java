package com.chainsys.bbms.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="donor_appointment")
public class DonorAppointment 
{
	@Id
	@Column(name="appointment_id")
	@Min(value=600, message="Please enter the valid id")
	@Max(value=699, message="Please enter the minimum value")
	private int appointmentId;
	
	@Column(name="Appointment_date")
	@NotNull(message="Appointment Date may not be null")
	private Date appointmentDate;
	
	@Column(name="person_id")
	@Min(value=200, message="Please enter the valid id")
	@Max(value=299, message="Please enter the minimum value")
	private int personId;
	
	public int getAppointmentId() {
		return appointmentId;
	}
	public void setAppointmentId(int appointmentId) {
		this.appointmentId = appointmentId;
	}
	public Date getAppointmentDate() {
		return appointmentDate;
	}
	public void setAppointmentDate(Date appointmentDate) {
		this.appointmentDate = appointmentDate;
	}
	public int getPersonId() {
		return personId;
	}
	public void setPersonId(int personId) {
		this.personId = personId;
	}
	
		
}
