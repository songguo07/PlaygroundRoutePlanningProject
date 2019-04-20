package com.sg.forestage.department.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sg.forestage.department.service.DepartmentService;
import com.sg.forestage.department.service.DepartmentServiceImpl;

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
		String selectProjectName=request.getParameter("selectProjectName");
		DepartmentService departmentService = new DepartmentServiceImpl();
		HttpSession session =request.getSession();
		if(!selectProjectName.equals("0")) {
			System.out.println(selectProjectName);
			departmentService.insertHobby(selectProjectName, session);
		}
	}

}
