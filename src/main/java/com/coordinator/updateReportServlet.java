package com.coordinator;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class updateReportServlet
 */
@WebServlet("/updateReportServlet")
public class updateReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	PrintWriter out;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		out=response.getWriter();
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String event = request.getParameter("event");
		String des = request.getParameter("des");
		
		boolean isTrue;
		
		isTrue = coordinatordbutill.updatereport(id, name, email, event, des);
		
		if(isTrue == true) {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Successfully Updated');");
			out.println("window.location = 'coordinatorinsert.jsp';");
			out.println("</script>");
			
		}
		else {
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Error');");
			out.println("location = 'updatereport.jsp'");
			out.println("</script>");
			
			
		}
		
		
	}

}
