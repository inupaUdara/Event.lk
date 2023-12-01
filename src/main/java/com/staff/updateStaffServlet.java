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
 * Servlet implementation class updateStaffServlet
 */
@WebServlet("/updateStaffServlet")
public class updateStaffServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get staff details from the form in updateStaff.jsp
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String uname=request.getParameter("username");
		String pwd=request.getParameter("password");
		String type=request.getParameter("type");
		
		boolean isTrue;
		isTrue=StaffDBUtil.updateStaff(id, name, email, phone, uname, pwd, type);
		
		if(isTrue==true) {
			List<Staff> staffDetails=StaffDBUtil.getStaffInfo();
			request.setAttribute("staffDetails", staffDetails);
			RequestDispatcher dis=request.getRequestDispatcher("staff.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis=request.getRequestDispatcher("updateStaff.jsp");
			dis.forward(request, response);
		}
	}

}
