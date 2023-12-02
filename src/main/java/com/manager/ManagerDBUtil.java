package com.manager;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;




import Event.EO.DBconnect;


public class ManagerDBUtil {
	
	
	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static boolean success;

public static boolean validate(String userName, String password){
		
		
		try {
			
			conn = DBconnect.getConnection();
			stmt = conn.createStatement();
			String sql = "SELECT * FROM staff WHERE susername= '"+userName+"' and spassword= '"+password+"' and type='EM'";
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

//	public static List<Manager>validate(String userName,String password){
//		
//		ArrayList<Manager> man = new ArrayList<>();
//		
//	
//		
//		//validate
//		
//		try {
//		    conn = DBConnect.getConnection();
//	    	 stmt = conn.createStatement();
//			 stmt = conn.createStatement();			
//		    String sql = "select * from Manager where username= '"+userName+"' and password='"+password+"'"	;		
//		     
//		     rs = stmt.executeQuery(sql);
//		    if(rs.next()) {
//		    	int id = rs.getInt(1);
//		    	String name = rs.getString(2);
//		    	String email = rs.getString(3);
//		    	String phone = rs.getString(4);
//		    	String userU = rs.getString(5);
//		    	String passU = rs.getString(6);
//		    	
//		    	Manager m =new Manager(id,name,email,phone,userU,passU);
//		    	man.add(m);
//		    }
//		}
//		catch(Exception e) {
//			e.printStackTrace();
//		}
		
//		return man;
//		
//	}
}
