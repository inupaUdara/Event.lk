package Event.EO;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {
	
	private static String url = "jdbc:mysql://localhost:3306/event";
	private static String userName = "root";
	private static String password = "8Cnl421925";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, userName, password);
			
			
		}
		catch(Exception e) {
			
			System.out.println("Database Connection is not success!!");
		}
		
		return con;
		
	}

}
