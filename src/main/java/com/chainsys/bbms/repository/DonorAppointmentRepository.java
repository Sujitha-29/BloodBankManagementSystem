package com.chainsys.bbms.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.bbms.model.DonorAppointment;

public interface DonorAppointmentRepository extends CrudRepository<DonorAppointment,Integer>
{
	DonorAppointment findById(int id);
	DonorAppointment save(DonorAppointment donorapo);
	void deleteById(int appointmentId);
	List<DonorAppointment> findAll();
}
