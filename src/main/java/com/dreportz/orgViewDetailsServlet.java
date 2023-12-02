package com.dreportz;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class orgViewDetailsServlet
 */
@WebServlet("/orgViewDetailsServlet")
public class orgViewDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		  try {
	            // Retrieve all event details using the 'getallEvtdetails' method
	            List<dereport> rDetails = ReportDBUtil.getallEvtdetails();
	            
	            // Set the 'rDetails' attribute to make the data available in JSP
	            request.setAttribute("rDetails", rDetails);
	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        // Forward the request to the "Main.jsp" page for rendering
	        RequestDispatcher dispatcher = request.getRequestDispatcher("viewDetails.jsp");
	        dispatcher.forward(request, response);
	}

}
