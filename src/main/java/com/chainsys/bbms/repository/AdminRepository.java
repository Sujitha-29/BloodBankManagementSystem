package com.chainsys.bbms.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.bbms.model.AdminDetail;

public interface AdminRepository extends CrudRepository<AdminDetail,Integer>
{
	AdminDetail findById(int id);
	AdminDetail save(AdminDetail admin);
	void deleteById(int adminsId);
	List<AdminDetail> findAll();
	
	//AdminDetail findByAdminIdAndAdminPassword(int id,String password);
	AdminDetail findByAdminNameAndAdminPassword(String name,String password);
	

}
