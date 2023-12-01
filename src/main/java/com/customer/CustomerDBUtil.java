package com.customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDBUtil {
	private static boolean isSuccess;
	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	//Method to validate user name and password to login
	public static boolean validate(String userName, String passWord) {	
		try {
			conn = DBConnection.getConnection();
			stmt = conn.createStatement();
			String sql = "select * from customer where username='" + userName + "'and password='" + passWord + "'";
			rs = stmt.executeQuery(sql);

			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;

	}

	//Method to retrieve customer user account details by user name
	public static List<Customer> getInfo(String userName) {
		
		
		ArrayList<Customer> cust = new ArrayList();

		try {
			conn = DBConnection.getConnection();
			stmt = conn.createStatement();
			String sql = "select * from customer where username='" + userName + "'";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String userN = rs.getString(5);
				String passW = rs.getString(6);

				Customer c = new Customer(id, name, email, phone, userN, passW);
				cust.add(c);

			}
		} catch (Exception e) {

		}
		return cust;
	}

	//method to register new customer
	public static boolean insertCustomer(String name, String email, String phone, String uname, String pass) {
		boolean isSuccess = false;

		try {

			conn = DBConnection.getConnection();
			stmt = conn.createStatement();

			String sql = "insert into customer values(0,'" + name + "','" + email + "','" + phone + "','" + uname
					+ "','" + pass + "')";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}

	//method to update customer 
	public static boolean updateCustomer(String id, String name, String email, String phone, String uname,
			String pass) {
		try {
			conn = DBConnection.getConnection();
			stmt = conn.createStatement();

			String sql = "update customer set name='" + name + "',email='" + email + "',phone='" + phone
					+ "',username='" + uname + "',password='" + pass + "'where id='" + id + "'";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	//method to retrieve customer user account details by user id
	public static List<Customer> getCustomer(String id) {
		int cusId = Integer.parseInt(id);
		ArrayList<Customer> cust = new ArrayList();

		try {
			conn = DBConnection.getConnection();
			stmt = conn.createStatement();
			String sql = "select * from customer where id='" + cusId + "'";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int Id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);

				Customer c = new Customer(Id, name, email, phone, username, password);
				cust.add(c);

			}
		} catch (Exception e) {

		}
		return cust;

	}

	//method to delete customer user account
	public static boolean deleteCustomer(String id) {
		int cusId = Integer.parseInt(id);
		try {
			conn = DBConnection.getConnection();
			stmt = conn.createStatement();
			String sql = "delete from customer where id='" + cusId + "'";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}

	public static boolean insertContact(String name, String email, String msg) {
		try {
			conn = DBConnection.getConnection();
			stmt = conn.createStatement();
			String sql = "insert into contact values(0,'" + name + "','" + email + "','" + msg + "')";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}

}