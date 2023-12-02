package com.dreportz;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DetailServlet")
public class DetailServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // handles the POST request
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Get the 'name' parameter from the request
        String name = request.getParameter("namE");

        try {
            // Validate the 'name' and retrieve a list of report details
            List<dereport> rDetails = ReportDBUtil.validate(name);
            
            // Set the 'rDetails' attribute to make the data available in JSP
            request.setAttribute("rDetails", rDetails);
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Store the 'name' as an authenticated user in the session
        request.getSession().setAttribute("authenticatedUser", name);

        // Forward the request to the "Report.jsp" page for rendering
        RequestDispatcher dis = request.getRequestDispatcher("Report.jsp");
        dis.forward(request, response);
    }
}
