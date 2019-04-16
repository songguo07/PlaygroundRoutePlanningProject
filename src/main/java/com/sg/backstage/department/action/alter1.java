package com.sg.backstage.department.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sg.backstage.department.entity.Department;
import com.sg.backstage.department.service.DepartmentService;
import com.sg.backstage.department.service.DepartmentServiceImpl;

@WebServlet("/alter1")
public class alter1 extends HttpServlet {
	//DepartmentService departmentservice=new DepartmentServiceImpl();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	DepartmentService departmentservice=new DepartmentServiceImpl();
    	String d_id = request.getParameter("d_id");
    	String d_name = request.getParameter("d_name");
    	
    	List<Department> department = departmentservice.selectById(d_id,d_name);
    	
    	request.setAttribute("department", department);
		
    	RequestDispatcher dispatcher = request.getRequestDispatcher("/views/department/alterDep.jsp");
		dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=utf-8");
        DepartmentService departmentservice=new DepartmentServiceImpl();
		String d_id=request.getParameter("d_id");
		String d_name=request.getParameter("d_name");
		//System.out.println(d_id);
		//System.out.println(d_name);
		Float d_aver_score=Float.parseFloat(request.getParameter("d_aver_score"));	
		String d_des=request.getParameter("d_des");
		String type_id=request.getParameter("type_id");
        
		int row = departmentservice.doAlter(d_id.trim(),d_name.trim(),d_aver_score,d_des.trim(),type_id.trim());

		if(row>0) {
	        response.sendRedirect(request.getContextPath()+"/findAll");
		}else {
			response.sendRedirect(request.getContextPath()+"/views/department/alterDep.jsp");
		}
    }
}
