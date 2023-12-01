package com.avaEvent;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.customer.DBConnection;//import DBConnection.java from com.customer package to establish the database connection

/**
 * Servlet implementation class displayEvent
 */
@WebServlet("/displayEvent")
public class displayEvent extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Database connection
		Connection conn=DBConnection.getConnection();
		PreparedStatement stmt=null;
		ResultSet rs=null;
		List<Event> rows = new ArrayList<Event>();
		
			try {
				//SQL query to retrieve data from database 
	            String sql = "SELECT id,name,venue,date,image FROM ava_event"; 
	            stmt = conn.prepareStatement(sql);
	            rs = stmt.executeQuery();
	            while (rs.next()) {
	            	//Extract data from result set
	                String id = rs.getString("id");
	                String name = rs.getString("name");
	                String venue=rs.getString("venue");
	                String date=rs.getString("date");
	                InputStream inputStream = rs.getBinaryStream("image");
	                
	                
	                //Read the image data
	                int fileLength = inputStream.available();
	                byte[] buffer = new byte[fileLength];
	                inputStream.read(buffer);
	                inputStream.close();
	                String imageData = Base64.getEncoder().encodeToString(buffer);
	                Event e = new Event(id, name,venue,date,imageData);
	                rows.add(e);
	            }
	            request.setAttribute("rows", rows);
	            
	            //forward request to event.jsp
	            RequestDispatcher dispatcher = request.getRequestDispatcher("event.jsp");
	            dispatcher.forward(request, response);
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}finally {
            try {
            	//close result set,prepared statement and connection
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
		
		
	}

}
