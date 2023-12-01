package com.avaEvent;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class regEventServlet
 */
@WebServlet("/regEventServlet")
public class regEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Get parameters from the form in regEvent.jsp for event registration
		String first = request.getParameter("fname");
		String last = request.getParameter("lname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String ename = request.getParameter("ename");
		String id = request.getParameter("eid");

		Boolean istrue;

		// calling function from EventDBUtil.java to register for a event
		istrue = EventDBUtil.insertRegEvent(first, last, email, phone, ename, id);

		if (istrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("regEvent.jsp");
			dis2.forward(request, response);
		}
	}

}
