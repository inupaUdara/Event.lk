package com.customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Event.EO.DBconnect;

/**
 * Servlet implementation class customerInsert
 */
@WebServlet("/customerInsert")
public class customerInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get parameters from the form in register.jsp for new registration
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String uname=request.getParameter("username");
		String pwd=request.getParameter("password");
		
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		Connection conn = DBconnect.getConnection();
		boolean isTrue;
		try {
		//check user name is exist or not and if user name is exist pop up alert 
		PreparedStatement pstmt=conn.prepareStatement("select username from customer where username=?");
		pstmt.setString(1, uname);
		ResultSet rs=pstmt.executeQuery();
		if(rs.next()) {
			//if user name is exist pop up alert 
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Username is Already exists!');");
			out.println("window.location = 'register.jsp';");
			out.println("</script>");
			
		}
		else {
			//calling insertCustomer function from CustomerDBUtil to register 
			isTrue=CustomerDBUtil.insertCustomer(name, email, phone, uname, pwd);
			
			
			if(isTrue==true) {
				
				RequestDispatcher dis=request.getRequestDispatcher("login.jsp");
				dis.forward(request, response);
			
			}
			else {
				RequestDispatcher dis2=request.getRequestDispatcher("register.jsp");
				dis2.forward(request, response);
			}
			
		}
		}
		catch(Exception e) {
			e.printStackTrace();	
			}
		
	}

}
