package Event.EO;

import java.io.IOException;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.avaEvent.Event;
@WebServlet("/DisplayEventServlet")
public class DisplayEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection con=DBconnect.getConnection();
		PreparedStatement stmt=null;
		ResultSet rs=null;
		List<Event> rows = new ArrayList<Event>();
		
		try {
			
			String sql = "SELECT id, name, venue, date, image FROM ava_event";
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next()) {
				String id = rs.getString("id");
				String name = rs.getString("name");
				String venue = rs.getString("venue");
				String date = rs.getString("date");
				InputStream inputStream = rs.getBinaryStream("image");
				int fileLength = inputStream.available();
				byte[] buffer = new byte[fileLength];
				inputStream.read(buffer);
				inputStream.close();
				String imageData = Base64.getEncoder().encodeToString(buffer);
				Event e = new Event(id, name, venue, date, imageData);
				rows.add(e);
				
			}
			
			request.setAttribute("rows", rows);
			RequestDispatcher dis = request.getRequestDispatcher("eventInsert.jsp");
			dis.forward(request, response);
			
		}
		catch(Exception e) {
			
			e.printStackTrace();
			
		}finally {
			try {
				if(rs != null) rs.close();
				if(rs != null)stmt.close();
				if(con != null)con.close();
			}
			catch(Exception e) {
				e.printStackTrace();
			}
		}
	}

}
