package com.dreportz;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.staff.Staff;
import com.staff.StaffDBUtil;

/**
 * Servlet implementation class orgViewServlet
 */
@WebServlet("/orgViewServlet")
public class orgViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
try {
			
			List<Staff> cDetails = StaffDBUtil.getorgdetails();
			request.setAttribute("cDetails",cDetails);
			}
			catch(Exception e) {
				e.printStackTrace();
			}
		 //request.getSession().setAttribute("authenticatedUser",Id);

			
			RequestDispatcher dispatcher =request.getRequestDispatcher("Eoview.jsp");
			dispatcher.forward(request,response);
	}

}
