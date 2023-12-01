package com.staff;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class displayContactServlet
 */
@WebServlet("/displayContactServlet")
public class displayContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Contact> contact=StaffDBUtil.getContact();
		request.setAttribute("contactInfo", contact);
		RequestDispatcher dis=request.getRequestDispatcher("contact.jsp");
		dis.forward(request, response);
	}

}
