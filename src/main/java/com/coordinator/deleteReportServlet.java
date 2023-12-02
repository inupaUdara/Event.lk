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
 * Servlet implementation class deleteReportServlet
 */
@WebServlet("/deleteReportServlet")
public class deleteReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String id = request.getParameter("id");
		boolean isTrue;
		
		isTrue = coordinatordbutill.deleteReport(id);
		
		if(isTrue == true) {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Successfully Deleted');");
			out.println("window.location = 'coordinatorinsert.jsp';");
			out.println("</script>");
			
		}
		else {
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Error');");
			out.println("location = 'deletereport.jsp'");
			out.println("</script>");
			
		}
		
		
	}

}
