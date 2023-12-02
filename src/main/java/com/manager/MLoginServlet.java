package com.manager;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Event.EO.EoDButil;




@WebServlet("/MLoginServlet")
public class MLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String userName = request.getParameter("uid");
		String password = request.getParameter("pass");
		boolean isSuc;
		
		
		isSuc = ManagerDBUtil.validate(userName, password);
		
		if(isSuc == true) {
			
			//eoDetails = EoDButil.getEventOrganizer(userName);
			HttpSession session=request.getSession();
			session.setAttribute("userName", userName);
			response.sendRedirect("v.jsp");
		}
		else {
			
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Invalid Username or Password!');");
			out.println("window.location = 'managerlogin.jsp';");
			out.println("</script>");
		}
//		 try {
//			 HttpSession session=request.getSession();
//				session.setAttribute("username", username);
//	            List<Manager> manDetails = ManagerDBUtil.validate(username, password);
//	            if (!manDetails.isEmpty()) {
//	                request.getSession().setAttribute("authenticatedUser", username);
//	                response.sendRedirect("v.jsp");
//	                return; // Return to prevent further execution
//	            }
//	        } catch (Exception e) {
//	            e.printStackTrace();
//	        }
}
}