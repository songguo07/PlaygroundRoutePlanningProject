package com.sg.forestage.department.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sg.forestage.department.service.DepartmentService;
import com.sg.forestage.department.service.DepartmentServiceImpl;
import com.sg.forestage.user.entity.User;

/**
 * ��ȡ�û�ϲ����Ŀ
 *
 *
 * @author ����ϼ
 */
@WebServlet("/DesignRoute")
public class DesignRoute extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Servlet:DesignRoute------>doPost()");
		String selectProjectName=request.getParameter("selectProjectName");
		System.out.println("Servlet:DesignRoute------>doPost(),selectProjectName:" + selectProjectName);
		
		DepartmentService departmentService = new DepartmentServiceImpl();
		User user = (User) request.getSession().getAttribute("userSession");
		PrintWriter out =response.getWriter();
		if(!selectProjectName.equals("0")) {
			int row = departmentService.insertHobby(selectProjectName, user);
			if(row==0) {
				out.println(0);
				out.flush();
				out.close();
			}
		}
	}

}
