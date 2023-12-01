package com.staff;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.customer.Customer;
import com.customer.CustomerDBUtil;

/**
 * Servlet implementation class staffInsertServlet
 */
@WebServlet("/staffInsertServlet")
public class staffInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get staff details from the form in staff.jsp
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String uname=request.getParameter("username");
		String pwd=request.getParameter("password");
		String type=request.getParameter("type");
		
		boolean isTrue;
		isTrue=StaffDBUtil.insertStaff(name, email, phone, uname, pwd,type);
		
		
		if(isTrue==true) {
			
			RequestDispatcher dis=request.getRequestDispatcher("staff.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2=request.getRequestDispatcher("unSuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
