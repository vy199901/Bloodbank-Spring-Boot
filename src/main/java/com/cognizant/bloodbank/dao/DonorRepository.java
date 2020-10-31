package com.cognizant.bloodbank.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cognizant.bloodbank.model.Donor;

@Repository
public interface DonorRepository extends JpaRepository<Donor, Integer> {
	
	boolean existsByEmail(String email);

}
