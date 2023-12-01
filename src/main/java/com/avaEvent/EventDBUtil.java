package com.avaEvent;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.customer.DBConnection;

public class EventDBUtil {

	
	private static boolean isSuccess;
	private static Connection conn=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
	public static boolean insertRegEvent(String fname,String lname,String email,String phone,String ename,String id) {
		boolean isSuccess=false;
		
		try {
			conn=DBConnection.getConnection();
			stmt=conn.createStatement();
			
			//sql query for insert data into the database
			String sql="insert into participant values(0,'"+fname+"','"+lname+"','"+email+"','"+phone+"','"+ename+"','"+id+"')";
			int rs=stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
}
