package com.dreportz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EventdeleteServlet")
public class EventdeleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // handles the POST request
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the 'id' parameter from the request
       

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		 String id = request.getParameter("id");
        boolean isTrue;
        
        // Call the 'deletereport' method to delete an event and store the result
        isTrue = ReportDBUtil.deletereport(id);
        if(isTrue == true) {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Successfully Deleted');");
			out.println("window.location = 'v.jsp';");
			out.println("</script>");
			
		}
		else {
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Error');");
			out.println("location = 'v.jsp'");
			out.println("</script>");
			
		}
		
		
	}


}
