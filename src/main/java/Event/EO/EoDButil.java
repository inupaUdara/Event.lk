package Event.EO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;





public class EoDButil {
	
	private static boolean success;
	private static boolean getOrgnizer;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean validate(String userName, String password){
		
		
		try {
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "SELECT * FROM staff WHERE susername= '"+userName+"' and spassword= '"+password+"' and type='EO'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				success = true;
			}
			else {
				success = false;
			}
			
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
		return success;
	}

	
	public static boolean getEventOrganizer(String userName){
		
		try {
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "SELECT * FROM staff WHERE susername= '"+userName+"'";
			rs = stmt.executeQuery(sql);
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return getOrgnizer;
	}
	
	
}
