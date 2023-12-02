package com.coordinator;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class diplayapplicationServlet
 */
@WebServlet("/diplayapplicationServlet")
public class diplayapplicationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		List<application> applicationDetails=coordinatordbutill.getapplication();
		request.setAttribute("applicationDetails", applicationDetails);
	
		
		RequestDispatcher dis=request.getRequestDispatcher("application.jsp");
		dis.forward(request, response);
	}

}
