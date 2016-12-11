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
import javax.servlet.RequestDispatcher;



@WebServlet("/SapLich")
public class SapLich extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  String CDT;
	  String HoTen;
	  String IDTK;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
			  CDT=request.getParameter("detai");
			  System.out.println(CDT);
			  
				  strQuery="SELECT HoTen,IDTK FROM taikhoan,(SELECT IDGV FROM BAOCAO WHERE IDDT='"+CDT+"') AS T WHERE T.IDGV=taikhoan.IDTK";
				  System.out.println(strQuery);
				  st = (Statement) conn.createStatement();
				   rs = st.executeQuery(strQuery);
				   
				
			         while(rs.next()){
			           
			             HoTen = rs.getString("HoTen");
			            IDTK = rs.getString("IDTK");
			         }
			         request.setAttribute("HoTen",HoTen);
			         request.setAttribute("IDTK",IDTK); 
			         RequestDispatcher rd = request.getRequestDispatcher("SAP_LICH.jsp");
			        rd.forward(request,response);
		 System.out.println("Connected to the database"); 
		  conn.close();
		  System.out.println("Disconnected from database");
		  } catch (Exception e) {
		  e.printStackTrace();
		  }
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
			  CDT=request.getParameter("CDT");
			  
			  
				  strQuery="SELECT * FROM taikhoan,(SELECT * FROM BAOCAO WHERE IDDT='"+CDT+"') AS T WHERE T.IDGV=taikhoan.IDTK";
				  System.out.println(strQuery);
				  st = (Statement) conn.createStatement();
				   rs = st.executeQuery(strQuery);
				 
			
		 System.out.println("Connected to the database"); 
		  conn.close();
		  System.out.println("Disconnected from database");
		  } catch (Exception e) {
		  e.printStackTrace();
		  }
	}

}
