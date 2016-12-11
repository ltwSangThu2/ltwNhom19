package gvpb.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import detai.model.Detai;
import saplich.dao.SaplichDao;
import user.model.User;


@WebServlet("/GvpbServlet")
public class GvpbServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	SaplichDao saplichDao;   
	
    public GvpbServlet() {
        super();
        saplichDao = new SaplichDao();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.setProperty("file.encoding","UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		try (PrintWriter out = response.getWriter()){
			String chuyenNganh= request.getParameter("valajax");
				List<User> gvpbs=saplichDao.getGVPBById(chuyenNganh);
				 response.getWriter().write("<label>PHẢN BIỆN </label>");
				 response.getWriter().write("<select class='form-control'>");
				
				 for (User v : gvpbs)
				 {
					 response.getWriter().write("<option>"+v.getHoTen()+"</option>");
					 response.getWriter().write("<option value="+v.getIdUser()+">");
					
				 }
				 response.getWriter().write("</select>");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.setProperty("file.encoding","UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
	   
		
		try (PrintWriter out = response.getWriter()){
			String chuyenNganh= request.getParameter("valajax");
				List<User> gvpbs=saplichDao.getGVPBById(chuyenNganh);
				for (User v : gvpbs){
					
					 System.out.println(v.getHoTen());
				    }
				 response.getWriter().write("<label>PHẢN BIỆN </label>");
				 response.getWriter().write("<select class='form-control'>");
				
				 for (User v : gvpbs)
				 {
					 response.getWriter().write("<option>"+v.getHoTen()+"</option>");
					 response.getWriter().write("<option value="+v.getIdUser()+">");
					
				 }
				 response.getWriter().write("</select>");
		}
	}

}
