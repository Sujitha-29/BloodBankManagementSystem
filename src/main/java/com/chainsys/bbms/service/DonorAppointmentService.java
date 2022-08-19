package com.chainsys.bbms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.bbms.model.DonorAppointment;
import com.chainsys.bbms.repository.DonorAppointmentRepository;

@Service
public class DonorAppointmentService {
	@Autowired
	private DonorAppointmentRepository donorAppointmentRepository;
	public List<DonorAppointment> getAppointments()
	{
		return donorAppointmentRepository.findAll();
	}
	public DonorAppointment save(DonorAppointment da)
	{
		return donorAppointmentRepository.save(da);
	}
	public DonorAppointment findById(int id)
	{
		return donorAppointmentRepository.findById(id);
	}
	public void deleteById(int id)
	{
		donorAppointmentRepository.deleteById(id);
	}

}