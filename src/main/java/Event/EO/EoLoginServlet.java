package Event.EO;

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


@WebServlet("/EoLoginServlet")
public class EoLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String userName = request.getParameter("uid");
		String password = request.getParameter("pass");
		boolean isSuc;
		boolean eoDetails;
		
		isSuc = EoDButil.validate(userName, password);
		
		if(isSuc == true) {
			
			//eoDetails = EoDButil.getEventOrganizer(userName);
			HttpSession session=request.getSession();
			session.setAttribute("userName", userName);
			response.sendRedirect("eventInsert.jsp");
		}
		else {
			
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Invalid Username or Password!');");
			out.println("window.location = 'eventOrganizerLogin.jsp';");
			out.println("</script>");
		}
		
	}

}
