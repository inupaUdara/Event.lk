package com.coordinator;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class coordinatordbutill {
	
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static boolean isSuccess;
	
	public static boolean validate(String username,String password){

		try {
			con = dbconnect.getConnection();
			stmt = con.createStatement();
			String sql = "Select * from staff where susername='"+username+"'and spassword='"+password+"' and type='EC'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			
			}
		
		}catch(Exception e) {
			e.printStackTrace();
		}
						
		return isSuccess;
	}
	
	
	public static boolean insertcoordinator(String name,String email,String event,String description) {
		 
		boolean  isSuccess = false;
		
		
		try {
			
			con=dbconnect.getConnection();
			stmt=con.createStatement();
		
			String sql = "insert into report values(0,'"+name+"','"+email+"','"+event+"','"+description+"')";

			int rs = stmt.executeUpdate(sql);
			
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
	
	public static List<report> getreportInfo(){
		ArrayList<report> report1=new ArrayList<report>();
			try {
				con=dbconnect.getConnection();
				stmt=con.createStatement();
				String sql="SELECT * FROM report";
				rs=stmt.executeQuery(sql);
				
				while(rs.next()) {
					int id=rs.getInt(1);
					String name=rs.getString(2);
					String email=rs.getString(3);
					String event=rs.getString(4);
					String des=rs.getString(5);
				
					
					
					report s=new report(id,name,email,event,des);
					report1.add(s);
					
				}
				
			}
			catch(Exception e) {
				e.printStackTrace();
			}
		return report1;
		}
	
	public static boolean updatereport(String id,String name, String email, String event, String description) {
		
		try {
			con = dbconnect.getConnection();
			stmt = con.createStatement();
			String sql="UPDATE report set name='"+name+"',email='"+email+"',event='"+event+"',description='"+description+"' WHERE reportid='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess= true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}


	public static List<application> getapplication(){
		
		ArrayList<application> application1=new ArrayList<application>();
		
		try {
			con=dbconnect.getConnection();
			stmt=con.createStatement();
			String sql="SELECT * FROM participant";
			rs=stmt.executeQuery(sql);
				
				while(rs.next()) {
					int id=rs.getInt(1);
					String fname=rs.getString(2);
					String lname=rs.getString(3);
					String email=rs.getString(4);
					String phone=rs.getString(5);
					String ename=rs.getString(6);
					String eid=rs.getString(7);
					
					application a= new application(id,fname,lname,email,phone,ename,eid);
					application1.add(a);
					}			
			}
			catch(Exception e) {
				e.printStackTrace();
			}
		return application1;
		}
	
	public static boolean deleteReport(String id) {
		
		int convid= Integer.parseInt(id);
		
		try {
			
			con=dbconnect.getConnection();
			stmt=con.createStatement();
			String sql="DELETE FROM report WHERE reportid='"+convid+"'";
			int d = stmt.executeUpdate(sql);
			
			if(d>0) {
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
	
	public static boolean deleteApplicaiton(String id) {
		
		int cid= Integer.parseInt(id);
		
		try {
			
			con=dbconnect.getConnection();
			stmt=con.createStatement();
			String sql="DELETE FROM participant WHERE pid='"+cid+"'";
			int d = stmt.executeUpdate(sql);
			
			if(d>0) {
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

	

