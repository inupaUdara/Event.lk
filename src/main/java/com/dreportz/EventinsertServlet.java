package com.dreportz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EventinsertServlet")
public class EventinsertServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // handles the POST request
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get event details from the request parameters
      

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
    	
    	String name = request.getParameter("name");
        String event_type = request.getParameter("etype");
        String participant_limit = request.getParameter("plimit");
        String time_period = request.getParameter("tperiod");
        String instruction = request.getParameter("instruction");
        String assign_organizer = request.getParameter("addorganizer");
        String assign_coordinator = request.getParameter("addcoordinator");

        boolean isTrue;
        // Call the 'insertdereport' method to insert event details and store the result
        isTrue = ReportDBUtil.insertdereport(name, event_type, participant_limit, time_period, instruction, assign_organizer, assign_coordinator);
        if(isTrue == true) {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Successfully Added');");
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

