package com.cognizant.bloodbank.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotNull;

@Entity
@Inheritance(strategy = InheritanceType.JOINED)
@Table(uniqueConstraints=@UniqueConstraint(columnNames ="email") )
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int user_id;
	@NotNull
	private String user_name;
	@NotNull
	private String email;
	@NotNull
	private String password;
	@NotNull
	private String contact;
	@NotNull
	private String roles;
	@NotNull
	private String location;
	private boolean active = true;

	public User() {
	}

	public User(@NotNull String user_name, @NotNull String email, @NotNull String password, @NotNull String contact,
			@NotNull String roles, @NotNull String location, boolean active) {
		super();
		this.user_name = user_name;
		this.email = email;
		this.password = password;
		this.contact = contact;
		this.roles = roles;
		this.location = location;
		this.active = active;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getRoles() {
		return roles;
	}

	public void setRoles(String roles) {
		this.roles = roles;
	}

	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", user_name=" + user_name + ", email=" + email + ", password=" + password
				+ ", contact=" + contact + ", roles=" + roles + ", location=" + location + ", active=" + active + "]";
	}



}
