package com.cognizant.bloodbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cognizant.bloodbank.dao.OrganisationRepository;
import com.cognizant.bloodbank.model.Organisation;

@Service
public class OrganisationService {

	@Autowired
	private OrganisationRepository organisationRepository;
	

	public Organisation fetchBloodDetails(int id) {
		return organisationRepository.findById(id).get();
	}
	
	public List<Organisation> fetchAll(){
		return organisationRepository.findAll();
	}
	
	public boolean updateDetails(Organisation organisation) {
		return organisationRepository.save(organisation) != null;
	}
	
	public boolean deleteOrganisation(int id) {
		if(organisationRepository.existsById(id)) {
			organisationRepository.deleteById(id);
			return true;
		}
		 return false;
	}
	
}
