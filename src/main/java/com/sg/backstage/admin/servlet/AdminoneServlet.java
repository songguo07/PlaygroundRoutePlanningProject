package com.sg.backstage.admin.servlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.sg.backstage.admin.dao.AdminDaoIMpl;
import com.sg.backstage.admin.dao.DBUtil;
import  com.sg.backstage.admin.dao.AdminDao;
import com.sg.backstage.admin.entity.Adminone;
@WebServlet("/AdminoneServlet")
public class AdminoneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminoneServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 设置请求和响应编码
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String Sid = request.getParameter("USER_ID");
		Adminone dao=new Adminone();
		List list=dao.readFirstTitle(request.getParameter("USER_ID")); 
		request.getSession().setAttribute("list", list);
		response.sendRedirect("selecttable.jsp");
	}

}
