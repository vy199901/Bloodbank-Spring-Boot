package com.cognizant.bloodbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cognizant.bloodbank.dao.DonorRepository;
import com.cognizant.bloodbank.model.Donor;

@Service
public class DonorService {

	@Autowired
	private DonorRepository donorRepository;
	
	public Donor fetchBloodDetails(int id) {
		return donorRepository.findById(id).get();
	}
	
	public List<Donor> fetchAll(){
		return donorRepository.findAll();
	}
	
	public boolean updateDetails(Donor donor) {
		return donorRepository.save(donor) != null;
	}
	
	public boolean deleteDonor(int id) {
		if(donorRepository.existsById(id)) {
			donorRepository.deleteById(id);
			return true;
		}
		 return false;
	}
	
}
