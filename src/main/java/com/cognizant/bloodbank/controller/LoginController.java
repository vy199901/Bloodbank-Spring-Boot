package com.cognizant.bloodbank.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.cognizant.bloodbank.model.User;
import com.cognizant.bloodbank.service.LoginService;

@Controller
@SessionAttributes({ "id", "name", "user_roles" })
public class LoginController {

	@Autowired
	private LoginService loginService;
	
	@RequestMapping(value = "/login",params ={"message"},method = RequestMethod.GET)
	public String showLoginPage(@RequestParam String message ,ModelMap model) {
		if(message != null) {
			model.put("successMessage", "Registration Succesfull. Login Here !!");
		}
		return "login";
	}
	
	@RequestMapping(value = "/login",method = RequestMethod.GET)
	public String showLoginPage(ModelMap model) {
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String showWelcomePage(ModelMap model, @RequestParam String email, @RequestParam String password) {

		boolean isValidUser = loginService.validateUser(email, password);

		if (!isValidUser) {
			model.put("errorMessage", "Invalid Credentials");
			return "login";
		}

		User user = loginService.getUserDetails(email);
		String user_name = user.getUser_name();
		int user_id = user.getUser_id();
		String user_roles = user.getRoles();


		System.out.println(user_roles);

		model.put("name", user_name);
		model.put("id", user_id);
		model.put("user_roles", user_roles);

	System.out.println(user);

		if (user_roles.equalsIgnoreCase("DONOR")) {
			return "redirect:/welcome-donor";
		} else if (user_roles.equalsIgnoreCase("HOSPITAL") || user_roles.equalsIgnoreCase("BLOODBANK")) {
			return "redirect:/welcome-organisation";
		} else if (user_roles.equalsIgnoreCase("ADMIN")) {
			return "redirect:/welcome-admin";
		} else {
			return "welcome";
		}
	}
	
	@RequestMapping("/logout")
	public String logout(SessionStatus sessionStatus) {
		sessionStatus.setComplete();
		return "redirect:/";
	}
	

}
