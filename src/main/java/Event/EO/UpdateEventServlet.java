package Event.EO;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;



@WebServlet(name = "/UpdateEventServlet", urlPatterns = {"/UpdateEventServlet"})
@MultipartConfig(maxFileSize = 16177216)
public class UpdateEventServlet extends HttpServlet {
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
			PreparedStatement stmt=con.prepareStatement("UPDATE ava_event SET name= ?, venue= ?, date= ?, image= ? WHERE id= ?");
			stmt.setString(1, name);
			stmt.setString(2, venue);
			stmt.setString(3, date);
			InputStream is=part.getInputStream();
			stmt.setBlob(4, is);
			stmt.setString(5, id);
			result=stmt.executeUpdate();
			if(result > 0) {
				
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Successfully Updated!');");
				out.println("window.location = 'eventInsert.jsp';");
				out.println("</script>");
		
			}
			else {
				
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Unsuccess Your Update');");
				out.println("window.location = 'eventInsert.jsp';");
				out.println("</script>");
			}
			
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
	}

}
