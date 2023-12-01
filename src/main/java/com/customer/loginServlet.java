package com.customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		//get user name and password from login.jsp
		String username=request.getParameter("uname");
		String password=request.getParameter("pass");
		
	
		
		boolean isTrue;
		//calling validate function from CustomerDBUtil to validate user name and password
		isTrue=CustomerDBUtil.validate(username, password);
		if(isTrue==true)
		{
			//If validation is successful, create session
			HttpSession session=request.getSession();
			session.setAttribute("cusUsername", username);
			response.sendRedirect("index.jsp");
		}
		else {
			//If validation is unsuccessful, display alert
			out.println("<script type='text/javascript'>");
			out.println("alert('Incorrect Username Or Password')");
			out.println("location='login.jsp'");
			out.println("</script>");
		}
		
		
		
	}

}
