package com.chainsys.bbms.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.bbms.model.BloodTransaction;

public interface BloodTransactionRepository extends CrudRepository<BloodTransaction,Integer>
{
	BloodTransaction findById(int id);
	BloodTransaction save(BloodTransaction bloodtrans);
	void deleteById(int bloodTransactionId);
	List<BloodTransaction> findAll();
	
	BloodTransaction findByRequestId(int id);
}
