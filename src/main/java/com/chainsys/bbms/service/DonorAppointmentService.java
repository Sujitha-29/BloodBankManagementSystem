package com.chainsys.bbms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.bbms.model.DonorAppointment;
import com.chainsys.bbms.repository.DonorAppointmentRepository;

@Service
public class DonorAppointmentService {
	@Autowired
	private DonorAppointmentRepository darepo;
	public List<DonorAppointment> getAppointments()
	{
		List<DonorAppointment> appolist=darepo.findAll();
		return appolist;
	}
	public DonorAppointment save(DonorAppointment da)
	{
		return darepo.save(da);
	}
	public DonorAppointment findById(int id)
	{
		return darepo.findById(id);
	}
	public void deleteById(int id)
	{
		darepo.deleteById(id);
	}

}
