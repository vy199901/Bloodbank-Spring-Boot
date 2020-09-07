package com.cognizant.bloodbank.model;

import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.validation.constraints.NotNull;

@Entity
@PrimaryKeyJoinColumn(name = "donor_id")
public class Donor extends User {

	@NotNull
	private boolean consent = false;
	private String blood_group;

	public Donor() {
	}

	public Donor( boolean consent, String blood_group) {
		super();
		this.consent = consent;
		this.blood_group = blood_group;
	}


	public boolean isConsent() {
		return consent;
	}

	public void setConsent(boolean consent) {
		this.consent = consent;
	}

	public String getBlood_group() {
		return blood_group;
	}

	public void setBlood_group(String blood_group) {
		this.blood_group = blood_group;
	}

	@Override
	public String toString() {
		return "Donor [consent=" + consent + ", blood_group=" + blood_group + "]";
	}

}
