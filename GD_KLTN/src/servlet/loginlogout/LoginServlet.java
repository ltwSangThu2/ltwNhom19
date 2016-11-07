package servlet.loginlogout;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher; 

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		
		 
		//Lay thong tin nguoi dung nhap vao chua trong tham so request
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		//Kiem tra username va password
		
		if(servlet.loginlogout.LoginDao.validate(name, password)){
			//ghi thong tin user vao bien session
			HttpSession session=request.getSession();
			session.setAttribute("username", name);
			//lay thong tin user tu session in ra man hinh username
			request.getRequestDispatcher("index.jsp").include(request,response);
			out.print("Welcom, ");
			out.print(session.getAttribute("username"));
		}
		/*
		if(name.equals("user") && password.equals("123")){
			//ghi thong tin user vao bien session
			HttpSession session=request.getSession();
			session.setAttribute("username", name);
			//lay thong tin user tu session in ra man hinh username
			request.getRequestDispatcher("index.jsp").include(request,response);
			out.print(session.getAttribute("username"));
		}*/
		else{
			out.print("Vui long nhap dung username va password!!!!");
			request.getRequestDispatcher("login.jsp").include(request,response);
		}
		out.close();
		/*
		 if(LoginDao.validate(name, password)){  
		        RequestDispatcher rd=request.getRequestDispatcher("AdminServlet");  
		        rd.forward(request,response);  
		    }  
		    else{  
		        out.print("Sorry username or password error");  
		        RequestDispatcher rd=request.getRequestDispatcher("login.jsp");  
		        rd.include(request,response);  
		    }  
		out.close();
		*/
		}
	}


