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
	private AdminRepository adrepo;
	
	public List<AdminDetail> getAdmins()
	{
		List<AdminDetail> adminlist = adrepo.findAll();
		return adminlist;		
	}
	
	public AdminDetail save(AdminDetail ad)
	{
		return adrepo.save(ad);
	}
	public AdminDetail findById(int id)
	{
		return adrepo.findById(id);
	}
	public void deleteById(int id)
	{
		adrepo.deleteById(id);
	}
}
