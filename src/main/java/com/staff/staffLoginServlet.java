package com.staff;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class staffLoginServlet
 */
@WebServlet("/staffLoginServlet")
public class staffLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();//Initialize a PrintWriter
		response.setContentType("text/html");
		
		//get admin user name and password
		String adminUsername=request.getParameter("adminName");
		String password=request.getParameter("adminPassword");
		
		
		//calling validate function to validate username and password
		Boolean isTrue=StaffDBUtil.validateAdmin(adminUsername, password);
		
		if(isTrue==true) {
			//If validation is successful, create session
			HttpSession session=request.getSession();
			session.setAttribute("adminUsername", adminUsername);
			RequestDispatcher dis=request.getRequestDispatcher("staff.jsp");
			dis.forward(request, response);
		}
		else {
			//If validation is unsuccessful, display alert
			out.println("<script type='text/javascript'>");
			out.println("alert('incorrect')");
			out.println("location='adminLogin.jsp'");
			out.println("</script>");
		}
	}

}
