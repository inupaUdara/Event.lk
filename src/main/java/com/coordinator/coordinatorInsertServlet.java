package com.coordinator;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class coordinatorInsertServlet
 */
@WebServlet("/coordinatorInsertServlet")
public class coordinatorInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
    	
    	String name = request.getParameter("name");
        String email = request.getParameter("email");
        String event = request.getParameter("event");
        String description = request.getParameter("des");
 

        boolean isTrue;

        isTrue = coordinatordbutill.insertcoordinator(name, email, event, description);

        if (isTrue) {
        	
        	out.println("<script type=\"text/javascript\">");
			out.println("alert('Report Successfully Created');");
			out.println("window.location = 'coordinatorinsert.jsp';");
			out.println("</script>");
           
           
        } else {
            
        	out.println("<script type=\"text/javascript\">");
			out.println("alert('Report Can not be Created');");
			out.println("window.location = 'coordinatorinsert.jsp';");
			out.println("</script>");
        }
	}

}
