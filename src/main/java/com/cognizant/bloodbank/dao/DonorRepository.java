package com.cognizant.bloodbank.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cognizant.bloodbank.model.Donor;

public interface DonorRepository extends JpaRepository<Donor, Integer> {
	
	boolean existsByEmail(String email);


}
