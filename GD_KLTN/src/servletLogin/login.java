package servletLogin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;  
import javax.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;



@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		 response.setContentType("text/html;charset=UTF-8");
		  PrintWriter out = response.getWriter();
		  System.out.println("MySQL Connect Example.");
		  Connection conn = null;
		  String url = "jdbc:mysql://localhost/";
		  String dbName = "kltn";
		  String driver = "com.mysql.jdbc.Driver";
		  String userName = "root"; 
		  String password = "1234";
		 String username="";
		 String userpass="";
		 String strQuery= ""; 
		  Statement st=null;
		  ResultSet rs=null;
		  HttpSession session = request.getSession(true);
		  
		  try {
			 
			  Class.forName(driver).newInstance();
			  conn = DriverManager.getConnection(url+dbName,userName,password);
			  if(request.getParameter("username")!=null &&
					  request.getParameter("username")!="" && request.getParameter("password")!=null &&
					  	request.getParameter("password")!="")
			  {
				  //out.println(" Example.");
				  username = request.getParameter("username").toString();
				  userpass = request.getParameter("password").toString();
		 
				  strQuery="select * from TaiKhoan where TenTK='"+username+"' and  MatKhau='"+userpass+"'";
				  System.out.println(strQuery);
				  st = conn.createStatement();
				  rs = st.executeQuery(strQuery);
				  System.out.println("chay querry");
				  int count=0;
				  while(rs.next())
				  {
					  session.setAttribute("username",rs.getString(2));
					  count++;
				  }
				  if(count>0)
				  {
					   response.sendRedirect("ADMIN.jsp");
				  }
				  else
				  {
					  response.sendRedirect("login.jsp");
				  }
			  }
			 else
			 {
				 response.sendRedirect("login.jsp");
			 }
		 System.out.println("Connected to the database"); 
		  conn.close();
		  System.out.println("Disconnected from database");
		  } catch (Exception e) {
		  e.printStackTrace();
		  }
		  }
	

}
