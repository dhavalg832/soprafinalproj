package com.sopra.dao;

import java.util.ArrayList;

import com.sopra.model.Employee;

public interface EmployeeDao {
	ArrayList<Employee> getAllEmployee();

	Employee saveEmp(Employee emp);

	void deleteEmp(int id);

	Employee updateEmp(Employee emp);

	Employee getEmployee(int id);
}
