package com.rohan.crud.demo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name= "customer")
public class Customer {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name= "id")
	private int id;
	
	@NotNull(message="*is required")
	@Size(min=1,message= "*is required")
	@Size(max=45, message="*can't be greater than 45")
	@Column(name="first_name")
	private String firstName;
	
	@NotNull(message="*is required")
	@Size(min=1,message= "*is required")
	@Size(max=45, message="*can't be greater than 45")
	@Column(name="last_name")
	private String lastName;
	
	
	@NotNull(message="*is required")
	@Size(min=1,message= "*is required")
	@Size(max=45, message="*can't be greater than 45")
	@Column(name="email")
	private String email;

	public Customer() {}
	
	public Customer(String firstNme, String lastName, String email) {
		this.firstName = firstNme;
		this.lastName = lastName;
		this.email = email;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstNme) {
		this.firstName = firstNme;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Customer [id=" + id + ", firstNme=" + firstName + ", lastName=" + lastName + ", email=" + email + "]";
	}
	
}
