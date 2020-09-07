package com.cognizant.bloodbank.model;

import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.validation.constraints.Min;

@Entity
@PrimaryKeyJoinColumn(name = "org_id")
public class Organisation extends User {

	@Min(0)
	private int a_positive;
	@Min(0)
	private int a_negative;
	@Min(0)
	private int b_positive;
	@Min(0)
	private int b_negative;
	@Min(0)
	private int ab_positive;
	@Min(0)
	private int ab_negative;
	@Min(0)
	private int o_positive;
	@Min(0)
	private int o_negative;

	public Organisation() {
	}

	public Organisation( int a_positive, int a_negative, int b_positive, int b_negative, int ab_positive,
			int ab_negative, int o_positive, int o_negative) {
		super();
		this.a_positive = a_positive;
		this.a_negative = a_negative;
		this.b_positive = b_positive;
		this.b_negative = b_negative;
		this.ab_positive = ab_positive;
		this.ab_negative = ab_negative;
		this.o_positive = o_positive;
		this.o_negative = o_negative;
	}

	public int getA_positive() {
		return a_positive;
	}

	public void setA_positive(int a_positive) {
		this.a_positive = a_positive;
	}

	public int getA_negative() {
		return a_negative;
	}

	public void setA_negative(int a_negative) {
		this.a_negative = a_negative;
	}

	public int getB_positive() {
		return b_positive;
	}

	public void setB_positive(int b_positive) {
		this.b_positive = b_positive;
	}

	public int getB_negative() {
		return b_negative;
	}

	public void setB_negative(int b_negative) {
		this.b_negative = b_negative;
	}

	public int getAb_positive() {
		return ab_positive;
	}

	public void setAb_positive(int ab_positive) {
		this.ab_positive = ab_positive;
	}

	public int getAb_negative() {
		return ab_negative;
	}

	public void setAb_negative(int ab_negative) {
		this.ab_negative = ab_negative;
	}

	public int getO_positive() {
		return o_positive;
	}

	public void setO_positive(int o_positive) {
		this.o_positive = o_positive;
	}

	public int getO_negative() {
		return o_negative;
	}

	public void setO_negative(int o_negative) {
		this.o_negative = o_negative;
	}

	@Override
	public String toString() {
		return "Organisation [a_positive=" + a_positive + ", a_negative=" + a_negative
				+ ", b_positive=" + b_positive + ", b_negative=" + b_negative + ", ab_positive=" + ab_positive
				+ ", ab_negative=" + ab_negative + ", o_positive=" + o_positive + ", o_negative=" + o_negative + "]";
	}

}
