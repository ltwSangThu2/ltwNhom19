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


@WebServlet("/ThemGiaoVien")
public class ThemGiaoVien extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 String MGV;
	  String HT;
	  String CN;
	  String BM;
	  String GT;
	  String NS;
	  String SDT;
	  String EM;
	  String IDRole;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.setProperty("file.encoding","UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		 PrintWriter out = response.getWriter();
		 
		  System.out.println("MySQL Connect Example.");
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
			  MGV=request.getParameter("MGV");
			   HT=request.getParameter("HT");
			   CN=request.getParameter("CN");
			   BM=request.getParameter("BM");
			   GT=request.getParameter("GT");
			   NS=request.getParameter("NS");
			   SDT=request.getParameter("SDT");
			   EM=request.getParameter("EM");
			   IDRole=request.getParameter("IDRole"); 
			  st = (Statement) conn.createStatement();
				
				  strQuery="INSERT INTO taikhoan (IDTK, HoTen,GioiTinh,SDT,NgaySinh,ChuyenNganh,BoMon,Email,IDRole)" + "VALUES ('"+MGV+"','"+HT+"','"+GT+"','"+SDT+"','"+NS+"','"+CN+"','"+BM+"','"+EM+"','"+IDRole+"')";
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
		 
		  System.out.println("MySQL Connect Example.");
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
			  MGV=request.getParameter("MGV");
			   HT=request.getParameter("HT");
			   CN=request.getParameter("CN");
			   BM=request.getParameter("BM");
			   GT=request.getParameter("GT");
			   NS=request.getParameter("NS");
			   SDT=request.getParameter("SDT");
			   EM=request.getParameter("EM");
			   IDRole=request.getParameter("IDRole"); 
			  st = (Statement) conn.createStatement();
				
				  strQuery="INSERT INTO taikhoan (IDTK, HoTen,GioiTinh,SDT,NgaySinh,ChuyenNganh,BoMon,Email,IDRole)" + "VALUES ('"+MGV+"','"+HT+"','"+GT+"','"+SDT+"','"+NS+"','"+CN+"','"+BM+"','"+EM+"','"+IDRole+"')";
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
