package com.staff;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.avaEvent.Event;
import com.customer.DBConnection;

public class StaffDBUtil {
	private static boolean isSuccess;
	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	//Method to validate Admin login
	public static boolean validateAdmin(String userName, String passWord) {

		// validate
		try {
			conn = DBConnection.getConnection();
			stmt = conn.createStatement();
			String sql = "select * from admin where username='" + userName + "'and password='" + passWord + "'";
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

	//method to insert staff members details to database
	public static boolean insertStaff(String name, String email, String phone, String uname, String pass, String type) {
		boolean isSuccess = false;

		try {
			conn = DBConnection.getConnection();
			stmt = conn.createStatement();

			String sql = "insert into staff values(0,'" + name + "','" + email + "','" + phone + "','" + uname + "','"
					+ pass + "','" + type + "')";
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

	//Method to retrieve staff details from database
	public static List<Staff> getStaffInfo() {
		ArrayList<Staff> staff = new ArrayList();
		try {
			conn = DBConnection.getConnection();
			stmt = conn.createStatement();
			String sql = "SELECT * FROM staff";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String userN = rs.getString(5);
				String passW = rs.getString(6);
				String type = rs.getString(7);

				Staff s = new Staff(id, name, email, phone, userN, passW, type);
				staff.add(s);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return staff;
	}

	//Method to update staffdetails
	public static boolean updateStaff(String id, String name, String email, String phone, String uname, String pass,
			String type) {
		try {
			conn = DBConnection.getConnection();
			stmt = conn.createStatement();

			String sql = "update staff set sname='" + name + "',semail='" + email + "',sphone='" + phone
					+ "',susername='" + uname + "',spassword='" + pass + "',type='" + type + "'where sid='" + id + "'";
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

	//method to delete staff member
	public static boolean deleteStaff(String id) {
		int sId = Integer.parseInt(id);
		try {
			conn = DBConnection.getConnection();
			stmt = conn.createStatement();
			String sql = "delete from staff where sid='" + sId + "'";
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

	//Method to retrieve customer contact
	public static List<Contact> getContact() {
		ArrayList<Contact> contact = new ArrayList();
		try {
			conn = DBConnection.getConnection();
			stmt = conn.createStatement();
			String sql = "select * from contact";
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String msg = rs.getString(4);
				Contact ct = new Contact(id, name, email, msg);
				contact.add(ct);
			}

		} catch (Exception e) {

		}
		return contact;
	}

	//method to retrieve list of coordinator details 
	public static List<Staff> getcodetails() {

		ArrayList<Staff> coo = new ArrayList<>();

		try {

			conn = DBConnection.getConnection();
			stmt = conn.createStatement();
			String sql = "select sid,sname from staff where type='EC'";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				Staff de = new Staff(id, name);
				coo.add(de);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return coo;
	}

	//method to retrieve list of organizers details 
	public static List<Staff> getorgdetails() {

		ArrayList<Staff> coo = new ArrayList<>();

		try {

			conn = DBConnection.getConnection();
			stmt = conn.createStatement();
			String sql = "select sid,sname from staff where type='EO'";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				Staff de = new Staff(id, name);
				coo.add(de);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return coo;
	}
}
