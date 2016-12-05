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

@WebServlet("/ThemDeTai")
public class ThemDeTai extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	 String IDDT1;
	 String IDDT2;
	  String TDT;
	  String SLSV;
	  String MT;
	  String DIEM;
	  String NX;
	

	
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
		  String strQuery2= ""; 
		  Statement st=null;
		  ResultSet rs=null;
		  HttpSession session = request.getSession(true);
		  
		  try {
			 
			  Class.forName(driver).newInstance();
			  conn = DriverManager.getConnection(url+dbName,userName,password);
			  IDDT1=request.getParameter("IDDT");
			  IDDT2=request.getParameter("IDDT");
			  TDT=request.getParameter("TDT");
			  SLSV=request.getParameter("SLSV");
			  MT=request.getParameter("MT");
			  DIEM=request.getParameter("DIEM");
			  NX=request.getParameter("NX");
			   
			  st = (Statement) conn.createStatement();
				
				  strQuery="INSERT INTO detai (IDDT, TenDT, MoTa, SoLuongSV)" + "VALUES ('"+IDDT1+"','"+TDT+"','"+MT+"','"+SLSV+"')";
				  strQuery2="INSERT INTO baocao (IDDT, Diem, NhanXet)" + "VALUES ('"+IDDT2+"','"+DIEM+"','"+NX+"')";
				  System.out.println(strQuery);
				  System.out.println(strQuery2);
				  st.executeUpdate(strQuery);
				  st.executeUpdate(strQuery2);
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
		  String strQuery2= ""; 
		  Statement st=null;
		  ResultSet rs=null;
		  HttpSession session = request.getSession(true);
		  
		  try {
			 
			  Class.forName(driver).newInstance();
			  conn = DriverManager.getConnection(url+dbName,userName,password);
			  IDDT1=request.getParameter("IDDT");
			  IDDT2=request.getParameter("IDDT");
			  TDT=request.getParameter("TDT");
			  SLSV=request.getParameter("SLSV");
			  MT=request.getParameter("MT");
			  DIEM=request.getParameter("DIEM");
			  NX=request.getParameter("NX");
			   
			  st = (Statement) conn.createStatement();
				
				  strQuery="INSERT INTO detai (IDDT, TenDT, MoTa, SoLuongSV)" + "VALUES ('"+IDDT1+"','"+TDT+"','"+MT+"','"+SLSV+"')";
				  strQuery2="INSERT INTO baocao (IDDT, Diem, NhanXet)" + "VALUES ('"+IDDT2+"','"+DIEM+"','"+NX+"')";
				  System.out.println(strQuery);
				  System.out.println(strQuery2);
				  st.executeUpdate(strQuery);
				  st.executeUpdate(strQuery2);
				  response.sendRedirect("ADMIN.jsp");
			
		 System.out.println("Connected to the database"); 
		  conn.close();
		  System.out.println("Disconnected from database");
		  } catch (Exception e) {
		  e.printStackTrace();
		  }
	}

}
