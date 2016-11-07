package servlet.loginlogout;


import java.sql.*;  


public class LoginDao  {
	
       
	public static boolean validate(String name,String password){  
		boolean status=false;  
		try{  
		Class.forName("com.mysql.jdbc.Driver"); 
		Connection con=DriverManager.getConnection(  
		"jdbc:mysql://localhost/kltn","root","1234");  
		      
		PreparedStatement ps=con.prepareStatement(  
		"select * from TaiKhoan where TenTK=? and MatKhau=?");  
		ps.setString(1,name);  
		ps.setString(2,password);  
		      
		ResultSet rs=ps.executeQuery();  
		status=rs.next();  
		          
		}catch(Exception e){System.out.println(e);}  
		return status;  
		}  
	}  


