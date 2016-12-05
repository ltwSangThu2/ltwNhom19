package servletLogin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/ThemTaiKhoan")
public class ThemTaiKhoan extends HttpServlet {
	

	  String TTK;
	  String HT;
	  String CN;
	  String GT;
	  String NS;
	  String SDT;
	  String EM;
	  String MK;
	  String TQ;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.setProperty("file.encoding","UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		 PrintWriter out = response.getWriter();
		 
		  System.out.println("MySQL Connect Example. trường ");
		  Connection conn = null;
		  String url = "jdbc:mysql://localhost/";
		  String dbName = "kltn";
		  String driver = "com.mysql.jdbc.Driver";
		  String userName = "root"; 
		  String password = "1234";
		 
		 
		  String strQuery= ""; 
		  Statement st=null;
		  ResultSet rs=null;
		  HttpSession session = request.getSession(true);
		  
		  try {
			 
			  Class.forName(driver).newInstance();
			  conn = DriverManager.getConnection(url+dbName,userName,password);
			   
			   TTK=request.getParameter("TTK");
			   HT=request.getParameter("HT");
			   CN=request.getParameter("CN");
			   GT=request.getParameter("GT");
			   NS=request.getParameter("NS");
			   SDT=request.getParameter("SDT");
			   EM=request.getParameter("EM");
			   MK=request.getParameter("MK"); 
			   TQ=request.getParameter("TQ"); 
			  st = (Statement) conn.createStatement();
				
				  strQuery="INSERT INTO taikhoan (TenTK,HoTen,GioiTinh,SDT,NgaySinh,ChuyenNganh,Email,MatKhau,IDRole)" + "VALUES ('"+TTK+"','"+HT+"','"+GT+"','"+SDT+"','"+NS+"','"+CN+"','"+EM+"','"+MK+"','"+TQ+"')";
				  System.out.println(strQuery);
				  st.executeUpdate(strQuery);
				  response.sendRedirect("ADMIN.jsp");
			
		 System.out.println("Connected to the database"); 
		  conn.close();
		  System.out.println("Disconnected from database");
		  } catch (Exception e) {
		  e.printStackTrace();
		  }
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.setProperty("file.encoding","UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		 PrintWriter out = response.getWriter();
		 
		  System.out.println("MySQL Connect Example. trường ");
		  Connection conn = null;
		  String url = "jdbc:mysql://localhost/";
		  String dbName = "kltn";
		  String driver = "com.mysql.jdbc.Driver";
		  String userName = "root"; 
		  String password = "1234";
		 
		 
		  String strQuery= ""; 
		  Statement st=null;
		  ResultSet rs=null;
		  HttpSession session = request.getSession(true);
		  
		  try {
			 
			  Class.forName(driver).newInstance();
			  conn = DriverManager.getConnection(url+dbName,userName,password);
			   TTK=request.getParameter("TTK");
			   HT=request.getParameter("HT");
			   CN=request.getParameter("CN");
			   GT=request.getParameter("GT");
			   NS=request.getParameter("NS");
			   SDT=request.getParameter("SDT");
			   EM=request.getParameter("EM");
			   MK=request.getParameter("MK"); 
			   TQ=request.getParameter("TQ"); 
			  st = (Statement) conn.createStatement();
				
				  strQuery="INSERT INTO taikhoan (TenTK,HoTen,GioiTinh,SDT,NgaySinh,ChuyenNganh,Email,MatKhau,IDRole)" + "VALUES ('"+TTK+"','"+HT+"','"+GT+"','"+SDT+"','"+NS+"','"+CN+"','"+EM+"','"+MK+"','"+TQ+"')";
				  System.out.println(strQuery);
				  st.executeUpdate(strQuery);
				  response.sendRedirect("ADMIN.jsp");
			
		 System.out.println("Connected to the database"); 
		  conn.close();
		  System.out.println("Disconnected from database");
		  } catch (Exception e) {
		  e.printStackTrace();
		  }
	}

}
