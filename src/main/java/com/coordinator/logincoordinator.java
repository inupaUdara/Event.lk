package com.coordinator;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/logincoordinator")
public class logincoordinator extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String username = request.getParameter("cname");	
		String password = request.getParameter("cpass");
		boolean isTrue;
		
		try {
		
			isTrue = coordinatordbutill.validate(username, password);
			
			if(isTrue == true) {
				
				
				HttpSession session=request.getSession();
				session.setAttribute("username", username);
				response.sendRedirect("coordinatorPanel.jsp");
				//RequestDispatcher dis= request.getRequestDispatcher("coordinatorPanel.jsp");
				//dis.forward(request, response);
			}
			else {
				out.println("<script type = 'text/javascript'>");
				out.println("alert('Your user Name or password is incorrect');");
				out.println("location = 'coordinatorLogin.jsp'");
				out.println("</script>");
			}

			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
