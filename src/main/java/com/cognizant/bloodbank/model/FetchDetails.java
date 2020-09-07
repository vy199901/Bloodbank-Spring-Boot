package com.cognizant.bloodbank.model;

public class FetchDetails {

	private String location;
	private String blood_group;
	private String user_roles;

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getBlood_group() {
		return blood_group;
	}

	public void setBlood_group(String blood_group) {
		this.blood_group = blood_group;
	}

	public String getUser_roles() {
		return user_roles;
	}

	public void setUser_roles(String user_roles) {
		this.user_roles = user_roles;
	}

	public FetchDetails(String location, String blood_group, String user_roles) {
		super();
		this.location = location;
		this.blood_group = blood_group;
		this.user_roles = user_roles;
	}

	public FetchDetails() {
		super();
		// TODO Auto-generated constructor stub
	}


}
