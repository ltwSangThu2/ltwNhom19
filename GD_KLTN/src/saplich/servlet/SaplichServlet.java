package saplich.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import detai.model.Detai;
import hoidong.model.Hoidong;
import saplich.dao.SaplichDao;
import user.model.User;


@WebServlet("/SaplichServlet")
public class SaplichServlet extends HttpServlet {
	
	SaplichDao saplichDao;
    public SaplichServlet() {
        super();
        saplichDao = new SaplichDao();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		  
		List<Detai> detais=saplichDao.getAllDetais();
		List<Hoidong> hoidongs=saplichDao.getHoidong();
		for (Detai v : detais){
			
			 System.out.println(v.getNameProject());
		    }
		HttpSession session=request.getSession();
		session.setAttribute("detais",detais);
		session.setAttribute("hoidongs",hoidongs);
	    response.sendRedirect("SAP_LICH.jsp");
	    
	   
	
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		
		
		List<Detai> detais=saplichDao.getAllDetais();
		List<Hoidong> hoidongs=saplichDao.getHoidong();
		for (Detai v : detais){
			
			 System.out.println(v.getNameProject());
		    }
		HttpSession session=request.getSession();
		session.setAttribute("detais",detais);
		session.setAttribute("hoidongs",hoidongs);
	    response.sendRedirect("SAP_LICH.jsp");
	    
		
		}
	
}
