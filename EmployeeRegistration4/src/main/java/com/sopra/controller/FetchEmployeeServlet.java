package com.sopra.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sopra.dao.EmployeeDao;
import com.sopra.dao.EmployeeDaoImpl;
import com.sopra.model.Employee;

@WebServlet("/fetch")
public class FetchEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EmployeeDao dao = new EmployeeDaoImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String i = request.getParameter("id");
		int id = Integer.parseInt(i);
		Employee emp = dao.getEmployee(id);
		request.setAttribute("emp", emp);
		RequestDispatcher dispatcher = request.getRequestDispatcher("update.jsp");
		dispatcher.forward(request, response);

	}

}
