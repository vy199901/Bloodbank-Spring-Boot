package com.cognizant.bloodbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cognizant.bloodbank.dao.LocationRepository;
import com.cognizant.bloodbank.model.Location;

@Service
public class LocationService {
	
	@Autowired
	private LocationRepository locationRepository; 

	public List<String> getLocation(){
		return locationRepository.fetchLocation();
	}
	
	public List<Location> fetchAll(){
		return locationRepository.findAll();
	}
	
	public boolean save(Location location){
		return locationRepository.save(location) != null;
	}
	
	public long getDistrictCount() {
		return locationRepository.count();
	}
}
