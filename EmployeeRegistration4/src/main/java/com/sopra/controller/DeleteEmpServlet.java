package com.sopra.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.sopra.dao.EmployeeDao;
import com.sopra.dao.EmployeeDaoImpl;

/**
 * Servlet implementation class DeleteEmpServlet
 */
@WebServlet("/delete")

public class DeleteEmpServlet extends HttpServlet {

	static Logger logger = Logger.getLogger(DeleteEmpServlet.class);
	private static final long serialVersionUID = 1L;
	private EmployeeDao dao = new EmployeeDaoImpl();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		int empid = Integer.parseInt(id);
		dao.deleteEmp(empid);
		logger.info("Employee deleted");
		
		/*
		 * RequestDispatcher dispatcher=request.getRequestDispatcher("index.jsp");
		 * dispatcher.forward(request, response);
		 */
		// send request to browser first then to index
		response.sendRedirect("index.jsp");
	}
}
