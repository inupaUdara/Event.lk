package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class deleteCustomerServlet
 */
@WebServlet("/deleteCustomerServlet")
public class deleteCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("cusid");
		
		boolean isTrue;
		
		//calling deleteCustomer function from CustomerDBUtil to delete account
		isTrue=CustomerDBUtil.deleteCustomer(id);
		
		if(isTrue==true) {
			RequestDispatcher dis=request.getRequestDispatcher("register.jsp");
			dis.forward(request, response);
		}
		else {
			List<Customer> cus=CustomerDBUtil.getCustomer(id);
			request.setAttribute("cusDetails",cus);
			RequestDispatcher dis2=request.getRequestDispatcher("userAccount.jsp");
			dis2.forward(request, response);
		}
	}

}
