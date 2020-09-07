package com.cognizant.bloodbank.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.cognizant.bloodbank.model.Donor;
import com.cognizant.bloodbank.model.FetchDetails;
import com.cognizant.bloodbank.model.Organisation;
import com.cognizant.bloodbank.model.User;
import com.cognizant.bloodbank.service.DonorService;
import com.cognizant.bloodbank.service.LoginService;
import com.cognizant.bloodbank.service.OrganisationService;

@Controller
@SessionAttributes({ "id", "name", "user_roles" })
public class OperationsController {

	@Autowired
	private LoginService loginService;

	@Autowired
	private DonorService donorService;

	@Autowired
	private OrganisationService organisationService;

	@RequestMapping(value = "/bloodbank", method = RequestMethod.GET)
	public String showWelcomePage(ModelMap model) {
		return "welcome";
	}

	@RequestMapping(value = "/fetch", method = RequestMethod.POST)
	public @ResponseBody String fetchSearchDetails(@RequestBody FetchDetails fetchDetails) {

		String user_roles = fetchDetails.getUser_roles();
		String blood_group = fetchDetails.getBlood_group();
		String location = fetchDetails.getLocation();

		if (user_roles.equalsIgnoreCase("DONOR")) {
			return loginService.getDonorDetails(blood_group, location);
		} else if (user_roles.equalsIgnoreCase("HOSPITAL") || user_roles.equalsIgnoreCase("BLOODBANK")) {
			return loginService.getOrganisationDetails(user_roles, location);
		}

		return "<tr><td colspan='2'>No Data Available</td></tr>";
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String showRegisterUser(ModelMap model) {
		model.addAttribute("user", new User());
		return "register";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerUser(ModelMap model, @Valid User user, BindingResult result) {

		boolean saved = false;
		boolean isValidEmail = loginService.validateEmail(user.getEmail());

		if (isValidEmail) {
			model.put("errorMessage", "Email Already Exists, Please use unique Email-ID or tey Logging-IN");
			return "register";
		}

		String user_roles = user.getRoles();
		String user_name = user.getUser_name();
		String email = user.getEmail();
		String password = user.getPassword();
		String location = user.getLocation();
		String contact = user.getContact();

		if (user_roles.equalsIgnoreCase("DONOR")) {
			Donor donor = new Donor();
			donor.setConsent(false);
			donor.setUser_name(user_name);
			donor.setEmail(email);
			donor.setRoles(user_roles);
			donor.setPassword(password);
			donor.setLocation(location);
			donor.setContact(contact);
			saved = donorService.updateDetails(donor);
		} else if (user_roles.equalsIgnoreCase("HOSPITAL") || user_roles.equalsIgnoreCase("BLOODBANK")) {
			Organisation organisation = new Organisation();
			organisation.setUser_name(user_name);
			organisation.setEmail(email);
			organisation.setRoles(user_roles);
			organisation.setPassword(password);
			organisation.setLocation(location);
			organisation.setContact(contact);
			saved = organisationService.updateDetails(organisation);
		} else {
			return "welcome";
		}

		if (!saved) {
			model.put("errorMessage", "Error in Registration Process Try Again after some Time");
			return "register";
		}
		model.put("errorMessage", "Registration Succesfull, Please Login Here !!");
		return "redirect:/login";
	}

	@RequestMapping(value = "/welcome-admin", method = RequestMethod.GET)
	public String showAdminPage(ModelMap model) {

		int id = (Integer) model.get("id");
		String user_name = (String) model.get("name");
		String user_roles = (String) model.get("user_roles");
		model.put("name", user_name);
		model.put("id", id);
		model.put("user_roles", user_roles);

		model.put("donor", donorService.fetchAll());

		model.put("organisation", organisationService.fetchAll());

		return "welcome-admin";
	}
}
