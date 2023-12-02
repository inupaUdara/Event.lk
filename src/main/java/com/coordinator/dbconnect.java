package com.coordinator;

import java.sql.Connection;
import java.sql.DriverManager;

public class dbconnect {
	//create database connection
			private static String url="jdbc:mysql://localhost:3306/event";
			private static String username="root";
			private static String password="8Cnl421925"; 
			private static Connection conn;
			
			public static Connection getConnection() {
				try {
					Class.forName("com.mysql.jdbc.Driver");
					conn=DriverManager.getConnection(url, username, password);
				}
				catch(Exception e) {
					System.out.println("Database connection is not successed");
				}
				return conn;
			}
}
