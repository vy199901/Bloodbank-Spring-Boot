package com.cognizant.bloodbank.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cognizant.bloodbank.model.Organisation;

@Repository
public interface OrganisationRepository extends JpaRepository<Organisation, Integer> {
	
	boolean existsByEmail(String email);
	
}
