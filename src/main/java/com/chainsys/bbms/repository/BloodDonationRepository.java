package com.chainsys.bbms.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.bbms.model.BloodDonationDetail;

public interface BloodDonationRepository extends CrudRepository<BloodDonationDetail,Integer>
{
	BloodDonationDetail findById(int id);
	BloodDonationDetail save(BloodDonationDetail donationdetail);
	void deleteById(int donation_trans_id);
	List<BloodDonationDetail> findAll();
	List<BloodDonationDetail> findBloodDonationDetailByPersonId(int id);
	List<BloodDonationDetail> findByPersonIdOrderByDonationDateDesc(int id);
}
