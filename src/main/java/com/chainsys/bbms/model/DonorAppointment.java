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
@Table(name = "donor_appointment")
public class DonorAppointment {
	@Id
	@Column(name = "appointment_id")
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "appo_id")
	@SequenceGenerator(name = "appo_id", sequenceName = "appo_id", allocationSize = 1)
	private int appointmentId;

	@Column(name = "Appointment_date")
	private Date appointmentDate;

	@Column(name = "person_id")
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
