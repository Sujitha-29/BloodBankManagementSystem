package com.chainsys.bbms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.bbms.model.AdminDetail;
import com.chainsys.bbms.repository.AdminRepository;

@Service
public class AdminService 
{
	@Autowired
	private AdminRepository adminRepository;
	
	public List<AdminDetail> getAdmins()
	{
		List<AdminDetail> adminlist = adminRepository.findAll();
		return adminlist;		
	}
	
	public AdminDetail save(AdminDetail ad)
	{
		return adminRepository.save(ad);
	}
	public AdminDetail findById(int id)
	{
		return adminRepository.findById(id);
	}
	public void deleteById(int id)
	{
		adminRepository.deleteById(id);
	}
	
	public AdminDetail getAdminIdAdminPassword(int id,String password)
	{
		return adminRepository.findByAdminIdAndAdminPassword(id, password);
	}
}
