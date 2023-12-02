package Event.EO;

import java.io.IOException;

import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


@WebServlet(name = "/insertEventServlet", urlPatterns = {"/insertEventServlet"})
@MultipartConfig(maxFileSize = 16177216)
public class insertEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	PrintWriter out;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		out=response.getWriter();
		int result=0;
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String venue=request.getParameter("venue");
		String date=request.getParameter("date");
		Part part=request.getPart("image");
		
		try {
			
			Connection con = DBconnect.getConnection();
			PreparedStatement cstmt = con.prepareStatement("SELECT id FROM ava_event WHERE id = ?");
			cstmt.setString(1, id);
			ResultSet resultSet = cstmt.executeQuery();
			
			if(resultSet.next()) {
				
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Event ID is Already exists!');");
				out.println("window.location = 'eventInsert.jsp';");
				out.println("</script>");
				
			}
			else {
			PreparedStatement stmt=con.prepareStatement("INSERT INTO ava_event (id, name, venue, date, image) VALUES(?, ?, ?, ?, ?)");
			
			stmt.setString(1, id);
			stmt.setString(2, name);
			stmt.setString(3, venue);
			stmt.setString(4, date);
			InputStream is=part.getInputStream();
			stmt.setBlob(5, is);
			result=stmt.executeUpdate();
			if(result > 0) {
				
				response.sendRedirect("eventInsert.jsp");
			}
			else {
				
				response.sendRedirect("eventInsert.jsp");
			}
			}
			
		}
		catch(Exception e) {
			
			out.println(e);
			
		}
	}

}
