package com.cognizant.bloodbank.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

@Entity
public class Location {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int location_id;
	@NotNull
	private String district;

	public Location() {
		super();
	}

	public Location(int location_id, @NotNull String district) {
		super();
		this.location_id = location_id;
		this.district = district;
	}

	public int getLocation_id() {
		return location_id;
	}

	public void setLocation_id(int location_id) {
		this.location_id = location_id;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	@Override
	public String toString() {
		return "Location [location_id=" + location_id + ", district=" + district + "]";
	}

}
