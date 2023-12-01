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
 * Servlet implementation class displayUserAccountServlet
 */
@WebServlet("/displayUserAccountServlet")
public class displayUserAccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String username=request.getParameter("uname");
		
		//calling getInfo function to retrieve data to display account details
		List<Customer> cusDetails=CustomerDBUtil.getInfo(username);
		request.setAttribute("cusDetails", cusDetails);
		RequestDispatcher dis=request.getRequestDispatcher("userAccount.jsp");
		dis.forward(request, response);
	}

}
