package com.sg.forestage.department.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sg.forestage.department.service.DepartmentService;
import com.sg.forestage.department.service.DepartmentServiceImpl;

@WebServlet("/DesServlet")
public class DesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DepartmentService departmentService = new DepartmentServiceImpl();
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String depName = request.getParameter("depName");
		String depId = departmentService.getDepIdByName(depName);
		request.getSession().setAttribute("d_id", depId);
		response.sendRedirect("/playgroundRoutePlanning/views/evaluate/evaluate.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
