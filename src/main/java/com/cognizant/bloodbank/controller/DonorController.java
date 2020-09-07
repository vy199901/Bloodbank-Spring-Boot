package com.cognizant.bloodbank.controller;

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

@Controller
@SessionAttributes({ "id", "name", "user_roles" })
public class DonorController {

	@Autowired
	private DonorService donorService;

	@RequestMapping(value = "/welcome-donor", method = RequestMethod.GET)
	public String showDonorPage(ModelMap model) {

		int id = (Integer) model.get("id");
		String user_name = (String) model.get("name");
		String user_roles = (String) model.get("user_roles");
		model.put("org_id", id);
		model.put("name", user_name);
		model.put("id", id);
		model.put("user_roles", user_roles);

		Donor donor = donorService.fetchBloodDetails(id);
		model.put("consent", donor.isConsent());
		model.put("blood_group", donor.getBlood_group());
		return "welcome-donor";
	}

	@RequestMapping(value = "/update-donor-details", method = RequestMethod.GET)
	public String showUpdateDonorDetailsPage(ModelMap model) {
		int id = (Integer) model.get("id");
		String user_name = (String) model.get("name");
		Donor donor = donorService.fetchBloodDetails(id);
		model.put("donor", donor);
		model.put("name", user_name);
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
	
//	@RequestMapping(value = "/donor", method = RequestMethod.POST)
//	public String addDonorDetails(ModelMap model, @Valid Donor donor, BindingResult result) {
//
//		if (result.hasErrors()) {
//			model.put("errorMessage", "Error in Updating Record");
//			return "donor-update";
//		}
//
//		if (!donorService.updateDetails(donor)) {
//			return "donor-update";
//		}
//
//		return "redirect:/welcome-donor";
//	}
	
	@RequestMapping(value = "/delete-donor", method = RequestMethod.GET)
	public String deleteDonor(@RequestParam int id) {
		donorService.deleteDonor(id);
		return "redirect:/welcome-admin";
	}

	@RequestMapping(value = "/update-donor", method = RequestMethod.GET)
	public String showUpdateDonorPage(@RequestParam int id, ModelMap model) {
		Donor donor = donorService.fetchBloodDetails(id);
		model.put("donor", donor);
		return "donor";
	}
	
	@RequestMapping(value = "/update-donor", method = RequestMethod.POST)
	public String updateDonorPage(ModelMap model, @Valid Donor donor, BindingResult result) {
		if (result.hasErrors()) {
			model.put("errorMessage", "Error in Updating Record");
			return "donor";
		}

		if (!donorService.updateDetails(donor)) {
			return "donor";
		}

		return "redirect:/welcome-admin";
	}

	@RequestMapping(value = "/add-donor", method = RequestMethod.GET)
	public String showAddDonorPage(ModelMap model) {
		model.addAttribute("donor", new Donor());
		return "donor";
	}
	
	@RequestMapping(value = "/add-donor", method = RequestMethod.POST)
	public String addDonorDetailsAdmin(ModelMap model, @Valid Donor donor, BindingResult result) {

		if (result.hasErrors()) {
			model.put("errorMessage", "Error in Updating Record");
			return "donor";
		}

		if (!donorService.updateDetails(donor)) {
			return "donor";
		}

		return "redirect:/welcome-admin";
	}
}
