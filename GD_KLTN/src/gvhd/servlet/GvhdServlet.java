package gvhd.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import detai.model.Detai;
import hoidong.model.Hoidong;
import saplich.dao.SaplichDao;
import user.model.User;


@WebServlet("/GvhdServlet")
public class GvhdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	SaplichDao saplichDao;     
   
    public GvhdServlet() {
        super();
        saplichDao = new SaplichDao();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		try (PrintWriter out = response.getWriter()){
			String s= request.getParameter("valajax").toString();
			 int  idProject = Integer.parseInt(s);
				List<User> gvhds=saplichDao.getGVHDById(idProject);
				 response.getWriter().write("<label>GVHD </label>");
				 response.getWriter().write("<select class='form-control'>");
				
				 for (User v : gvhds)
				 {
					 response.getWriter().write("<option>"+v.getHoTen()+"</option>");
					 response.getWriter().write("<option value="+v.getIdUser()+">");
					
				 }
				 response.getWriter().write("</select>");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
		response.setContentType("text/html;charset=UTF-8");
		try (PrintWriter out = response.getWriter()){
			String s= request.getParameter("valajax").toString();
			 int  idProject = Integer.parseInt(s);
				List<User> gvhds=saplichDao.getGVHDById(idProject);
				 response.getWriter().write("<label>GVHD </label>");
				 response.getWriter().write("<select class='form-control'>");
				
				 for (User v : gvhds)
				 {
					 response.getWriter().write("<option>"+v.getHoTen()+"</option>");
					 response.getWriter().write("<option value="+v.getIdUser()+">");
					
				 }
				 response.getWriter().write("</select>");
		}
	}

}
