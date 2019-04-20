package com.sg.backstage.admin.servlet;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.sg.backstage.admin.dao.AdminDaoIMpl;
import com.sg.backstage.admin.dao.DBUtil;
import  com.sg.backstage.admin.dao.AdminDao;
import com.sg.backstage.admin.entity.Adminone;
@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminServlet() {
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
		// 获取请求参数
		System.out.println("11");
		String name = request.getParameter("name");
		System.out.println(name);
		String Sid = request.getParameter("USER_ID");
		AdminDao dao = new AdminDao();
		if(name.equals("所有信息")){
			//System.out.println(name);
			response.sendRedirect("selecttable.jsp");
		}
		else if(name.equals("用户账户"))
		{
			response.sendRedirect("Selectname.jsp");
			
			
		}
	}

}





