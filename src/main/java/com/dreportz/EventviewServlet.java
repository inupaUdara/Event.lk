

package com.dreportz;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import javax.servlet.RequestDispatcher;

@WebServlet("/EventviewServlet")
public class EventviewServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // handles the POST request
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get all event details from the database and display them

        try {
            // Retrieve all event details using the 'getallEvtdetails' method
            List<dereport> rDetails = ReportDBUtil.getallEvtdetails();
            
            // Set the 'rDetails' attribute to make the data available in JSP
            request.setAttribute("rDetails", rDetails);
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Forward the request to the "Main.jsp" page for rendering
        RequestDispatcher dispatcher = request.getRequestDispatcher("Main.jsp");
        dispatcher.forward(request, response);
    }
}
