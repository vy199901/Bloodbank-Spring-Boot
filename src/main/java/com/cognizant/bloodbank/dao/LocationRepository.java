package com.cognizant.bloodbank.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.cognizant.bloodbank.model.Location;

public interface LocationRepository extends JpaRepository<Location, Integer> {

	@Query(value = "select district from location", nativeQuery = true)
	List<String> fetchLocation();

}
