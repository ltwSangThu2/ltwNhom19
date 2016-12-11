package login.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBUtils {
	 // JDBC driver name va database URL (luu y ten database, cua co dat la logindb)
    static final String JDBC_DRIVER="com.mysql.jdbc.Driver";  
    static final String DB_URL="jdbc:mysql://localhost/kltn";
    

    //  Username & password cua mysql (sua lai cho dung tren may em)
    static final String USER = "root";
    static final String PASS = "1234";
    
    //Khai bao bien connection
	private static Connection connection = null;
	
	//lay connection toi MySQL database
	 public static Connection getConnection() {
		 if (connection != null)
	            return connection;
	        else {
	        	
	        	
	            try {
	            	// Register JDBC driver
					Class.forName("com.mysql.jdbc.Driver");
					
		            // Open a connection
				    connection = DriverManager.getConnection(DB_URL, USER, PASS);		
					
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				} catch (SQLException e) {
					e.printStackTrace();
				}
	            return connection;
	        }
	 }
}
