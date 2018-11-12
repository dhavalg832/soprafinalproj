package com.sopra.controller;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sopra.dao.EmployeeDao;
import com.sopra.dao.EmployeeDaoImpl;
import com.sopra.model.Employee;

/**
 * Servlet implementation class GetAllEmployeesServlet
 */
@WebServlet("/get")
public class GetAllEmployeesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EmployeeDao dao = new EmployeeDaoImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ArrayList<Employee> emp = dao.getAllEmployee();
		request.setAttribute("emp", emp);

		/*
		 * RequestDispatcher dispatcher=request.getRequestDispatcher("index.jsp");
		 * dispatcher.forward(request, response);
		 */

	}

}
