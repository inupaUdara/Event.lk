package Event.EO;

import java.io.IOException;
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


@WebServlet(name = "/DeleteEventServlet", urlPatterns = {"/DeleteEventServlet"})
@MultipartConfig(maxFileSize = 16177216)
public class DeleteEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	PrintWriter out;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		out=response.getWriter();
		int result=0;
		
		String id=request.getParameter("id");
		
		try {
			
			Connection con = DBconnect.getConnection();
			PreparedStatement stmt=con.prepareStatement("DELETE FROM ava_event WHERE id = ?");
			stmt.setString(1, id);
			result=stmt.executeUpdate();
			if(result > 0) {
				
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Successfully Deleted!');");
				out.println("window.location = 'eventInsert.jsp';");
				out.println("</script>");
			}
			else {
				
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Unsuccess Deleted Try again');");
				out.println("window.location = 'eventInsert.jsp';");
				out.println("</script>");
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
