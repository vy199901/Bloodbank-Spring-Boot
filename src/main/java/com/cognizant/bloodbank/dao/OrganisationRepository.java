package com.cognizant.bloodbank.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cognizant.bloodbank.model.Organisation;

public interface OrganisationRepository extends JpaRepository<Organisation, Integer> {
	
}
