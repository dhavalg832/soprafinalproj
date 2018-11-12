package com.sopra.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

import org.hibernate.annotations.GenericGenerator;

@Entity
public class Employee {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "empseq")
	@SequenceGenerator(name = "empseq", initialValue = 1, sequenceName = "emp_seq", allocationSize = 1)
	private int id;
	private String name;
	private String address;
	private String phone;
	private String jobLoc;
	private String designation;
	private String email;

	public Employee() {
	}

	public Employee(int id, String name, String address, String phone, String jobLoc, String designation,
			String email) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.jobLoc = jobLoc;
		this.designation = designation;
		this.email = email;
	}

	public Employee(String name, String address, String phone, String jobLoc, String designation, String email) {
		super();
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.jobLoc = jobLoc;
		this.designation = designation;
		this.email = email;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getJobLoc() {
		return jobLoc;
	}

	public void setJobLoc(String jobLoc) {
		this.jobLoc = jobLoc;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Employee [id=" + id + ", name=" + name + ", address=" + address + ", phone=" + phone + ", jobLoc="
				+ jobLoc + ", designation=" + designation + ", email=" + email + "]";
	}

}
