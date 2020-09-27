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

import com.cognizant.bloodbank.model.Organisation;
import com.cognizant.bloodbank.service.LocationService;
import com.cognizant.bloodbank.service.OrganisationService;

@Controller
@SessionAttributes({ "id", "name", "user_roles" })
public class OrganisationController {

	@Autowired
	private OrganisationService organisationService;
	
	@Autowired
	private LocationService locationService;

	@RequestMapping(value = "/welcome-organisation", method = RequestMethod.GET)
	public String showOrgnisationPage(ModelMap model) {

		int id = getLoggedInUserId(model);
		String user_name = getLoggedInUserName(model);
		String user_roles = getLoggedInUserRole(model);
		model.put("name", user_name);
		model.put("user_roles", user_roles);

		Organisation organisation = organisationService.fetchBloodDetails(id);
		String location = organisation.getLocation();
		String emailid = organisation.getEmail();
		String contact = organisation.getContact();
		
		model.put("location", location);
		model.put("email", emailid);
		model.put("contact", contact);
		model.put("a_pos", organisation.getA_positive());
		model.put("a_neg", organisation.getA_negative());
		model.put("b_pos", organisation.getB_positive());
		model.put("b_neg", organisation.getB_negative());
		model.put("ab_pos", organisation.getAb_positive());
		model.put("ab_neg", organisation.getAb_negative());
		model.put("o_pos", organisation.getO_positive());
		model.put("o_neg", organisation.getO_negative());

		return "welcome-organisation";
	}

	@RequestMapping(value = "/update-blood-details", method = RequestMethod.GET)
	public String showUpdateBloodDetailsPage(ModelMap model) {
		int id = getLoggedInUserId(model);
		Organisation organisation = organisationService.fetchBloodDetails(id);
		model.put("organisation", organisation);
		List<String> district = locationService.getLocation();
		model.addAttribute("district", district);
		return "org-update";
	}

	@RequestMapping(value = "/update-blood-details", method = RequestMethod.POST)
	public String updateBloodDetails(ModelMap model, @Valid Organisation organisation, BindingResult result) {

		if (result.hasErrors()) {
			return "org-update";
		}

		if (!organisationService.updateDetails(organisation)) {
			return "org-update";
		}

		return "redirect:/welcome-organisation";
	}

	@RequestMapping(value = "/delete-organisation", method = RequestMethod.GET)
	public String deleteOrganisation(@RequestParam int id) {
		organisationService.deleteOrganisation(id);
		return "redirect:/organisation";
	}

	@RequestMapping(value = "/update-organisation", method = RequestMethod.GET)
	public String showUpdateOrganisationPage(@RequestParam int id, ModelMap model) {
		Organisation organisation = organisationService.fetchBloodDetails(id);
		List<String> district = locationService.getLocation();
		model.addAttribute("district", district);
		model.put("organisation", organisation);
		return "organisation-add";
	}

	@RequestMapping(value = "/update-organisation", method = RequestMethod.POST)
	public String updateOrganisationPage(ModelMap model, @Valid Organisation organisation, BindingResult result) {
		if (result.hasErrors()) {
			model.put("errorMessage", "Error in Updating Record");
			return "organisation-add";
		}

		if (!organisationService.updateDetails(organisation)) {
			return "organisation-add";
		}

		return "redirect:/organisation";
	}

	@RequestMapping(value = "/add-organisation", method = RequestMethod.GET)
	public String showAddOrganisationPage(ModelMap model) {
		List<String> district = locationService.getLocation();
		model.addAttribute("district", district);
		model.addAttribute("organisation", new Organisation());
		return "organisation-add";
	}

	@RequestMapping(value = "/add-organisation", method = RequestMethod.POST)
	public String addOrganisationDetailsAdmin(ModelMap model, @Valid Organisation organisation, BindingResult result) {

		if (result.hasErrors()) {
			model.put("errorMessage", "Error in Updating Record");
			return "organisation-add";
		}

		if (!organisationService.updateDetails(organisation)) {
			return "organisation-add";
		}

		return "redirect:/organisation";
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
