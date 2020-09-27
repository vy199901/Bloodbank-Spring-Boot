package com.cognizant.bloodbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cognizant.bloodbank.dao.UserRepository;
import com.cognizant.bloodbank.model.User;

@Service
public class LoginService {

	@Autowired
	private UserRepository userRepository;

	public boolean validateUser(String email, String password) {
		if(userRepository.existsByEmail(email)) {
			User user = userRepository.findByEmail(email);
			String user_password = user.getPassword();
			return password.equalsIgnoreCase(user_password);
		}
		return false;
	}

	public boolean validateEmail(String email) {
		return userRepository.findByEmail(email) != null;
	}

	public User getUserDetails(String email) {
		User user = userRepository.findByEmail(email);
		return user;
	}

	public String getDonorDetails(String blood_group , String location) {
		System.out.println(blood_group);
		List<User> user = userRepository.fetchDonorDetails(blood_group, location);
		System.out.println(user);
		String result = "";
		if(!user.isEmpty()) {
			for (User u : user) {
				result = result + "<tr><td>"+u.getUser_name()+"</td><td>"+u.getEmail()+"</td><td>"+u.getContact()+"</td></tr>";
			}
			System.out.println("Result in login Service : "+result);
			return result;
		}
		return "<tr><td colspan='3'>No Record Found</td></tr>";
	}
	
	public String getOrganisationDetails(String user_roles , String location) {
		System.out.println(user_roles);
		List<User> user = userRepository.fetchOrganisationDetails(user_roles, location);
		System.out.println(user);
		String result = "";
		if(!user.isEmpty()) {
			for (User u : user) {
				result = result + "<tr><td>"+u.getUser_name()+"</td><td>"+u.getEmail()+"</td><td>"+u.getContact()+"</td></tr>";
			}
			System.out.println("Result in login Service : "+result);
			return result;
		}
		return "<tr><td colspan='2'>No Record Found</td></tr>";
	}
	
	public int getRolesCount(String roles) {
		return userRepository.countByRoles(roles);
	}
	
}
