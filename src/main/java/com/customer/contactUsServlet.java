package com.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class contactUsServlet
 */
@WebServlet("/contactUsServlet")
public class contactUsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Get parameters from the form in contact.jsp
		String contact_name=request.getParameter("contact_name");
		String contact_email=request.getParameter("contact_email");
		String message=request.getParameter("contact_message");
		
		//calling insertContact function fromCustomerDBUtil
		boolean isTrue=CustomerDBUtil.insertContact(contact_name, contact_email, message);
		
		if(isTrue=true) {
			RequestDispatcher dis=request.getRequestDispatcher("aboutUs.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2=request.getRequestDispatcher("aboutUs.jsp");
			dis2.forward(request, response);
		}
	}

}
