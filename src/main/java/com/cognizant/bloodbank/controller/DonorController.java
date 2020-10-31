package com.cognizant.bloodbank.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.cognizant.bloodbank.model.Donor;
import com.cognizant.bloodbank.service.DonorService;
import com.cognizant.bloodbank.service.LocationService;

@Controller
@SessionAttributes({ "id", "name", "user_roles" })
public class DonorController {

	@Autowired
	private DonorService donorService;
	
	@Autowired
	private LocationService locationService;

	@RequestMapping(value = "/welcome-donor", method = RequestMethod.GET)
	public String showDonorPage(ModelMap model) {

		int id = getLoggedInUserId(model);
		String user_name = getLoggedInUserName(model);
		String user_roles = getLoggedInUserRole(model);
		model.put("org_id", id);
		model.put("name", user_name);
		model.put("id", id);
		model.put("user_roles", user_roles);

		Donor donor = donorService.fetchBloodDetails(id);
		String location = donor.getLocation();
		String emailid = donor.getEmail();
		String contact = donor.getContact();
		
		model.put("location", location);
		model.put("email", emailid);
		model.put("contact", contact);
		model.put("consent", donor.isConsent());
		model.put("blood_group", donor.getBlood_group());
		return "welcome-donor";
	}

	@RequestMapping(value = "/update-donor-details", method = RequestMethod.GET)
	public String showUpdateDonorDetailsPage(ModelMap model) {
		int id = getLoggedInUserId(model);
		Donor donor = donorService.fetchBloodDetails(id);
		model.put("donor", donor);
		List<String> district = locationService.getLocation();
		model.addAttribute("district", district);
		return "donor-update";
	}

	@RequestMapping(value = "/update-donor-details", method = RequestMethod.POST)
	public String updateDonorDetails(ModelMap model, @Valid Donor donor, BindingResult result) {

		if (result.hasErrors()) {
			model.put("errorMessage", "Error in Updating Record");
			return "donor-update";
		}

		if (!donorService.updateDetails(donor)) {
			return "donor-update";
		}

		return "redirect:/welcome-donor";
	}

	@RequestMapping(value = "/delete-donor", method = RequestMethod.GET)
	public String deleteDonor(@RequestParam int id) {
		donorService.deleteDonor(id);
		return "redirect:/donor";
	}

	@RequestMapping(value = "/update-donor", method = RequestMethod.GET)
	public String showUpdateDonorPage(@RequestParam int id, ModelMap model) {
		Donor donor = donorService.fetchBloodDetails(id);
		List<String> district = locationService.getLocation();
		model.addAttribute("district", district);
		model.put("donor", donor);
		return "donor-add";
	}

	@RequestMapping(value = "/update-donor", method = RequestMethod.POST)
	public String updateDonorPage(ModelMap model, @Valid Donor donor, BindingResult result) {
		if (result.hasErrors() || !donorService.updateDetails(donor)) {
			model.put("errorMessage", "Error in Updating Record");
			List<String> district = locationService.getLocation();
			model.addAttribute("district", district);
			model.addAttribute("donor", new Donor());
			return "donor-add";
		}

		return "redirect:/donor";
	}

	@RequestMapping(value = "/add-donor", method = RequestMethod.GET)
	public String showAddDonorPage(ModelMap model) {
		List<String> district = locationService.getLocation();
		model.addAttribute("district", district);
		model.addAttribute("donor", new Donor());
		return "donor-add";
	}

	@RequestMapping(value = "/add-donor", method = RequestMethod.POST)
	public String addDonorDetailsAdmin(ModelMap model, @Valid Donor donor, BindingResult result) {

		if (result.hasErrors() || !donorService.saveDetails(donor)) {
			model.put("errorMessage", "Error in Updating Record. Email-Id already exists.");
			List<String> district = locationService.getLocation();
			model.addAttribute("district", district);
			model.addAttribute("donor", new Donor());
			return "donor-add";
		}

		return "redirect:/donor";
	}

	private String getLoggedInUserRole(ModelMap model) {
		return (String) model.get("user_roles");
	}

	private String getLoggedInUserName(ModelMap model) {
		return (String) model.get("name");
	}

	private Integer getLoggedInUserId(ModelMap model) {
		return (Integer) model.get("id");
	}
}
