package com.sopra.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sopra.dao.EmployeeDao;
import com.sopra.dao.EmployeeDaoImpl;
import com.sopra.model.Employee;

/**
 * Servlet implementation class UpdateEmployeeServlet
 */
@WebServlet("/update")
public class UpdateEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EmployeeDao dao = new EmployeeDaoImpl();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String jobloc = request.getParameter("jobloc");
		String email = request.getParameter("email");
		String designation = request.getParameter("designation");

		int empid = Integer.parseInt(id);

		Employee emp = new Employee(empid, name, address, phone, jobloc, designation, email);
		Employee emp1 = dao.updateEmp(emp);

		response.sendRedirect("index.jsp");
	}

}
