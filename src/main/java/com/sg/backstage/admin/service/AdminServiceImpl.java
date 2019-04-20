package com.sg.backstage.admin.service;

/**
 * 绠＄悊鍛樻湇鍔″眰瀹炵幇绫�
 */
/**public class AdminServiceImpl implements AdminService{

}**/
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/AdminServiceImpl")
public class AdminServiceImpl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminServiceImpl() {
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
		String Sid = request.getParameter("Sid");
		 dao=new Selectone();
		List list=dao.readFirstTitle(request.getParameter("Sid")); 
		request.getSession().setAttribute("list", list);
		response.sendRedirect("SelectoneTable.jsp");
	}

}
