package com.sg.backstage.department.action;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sg.backstage.department.entity.Department;
import com.sg.backstage.department.service.DepartmentService;
import com.sg.backstage.department.service.DepartmentServiceImpl;



@WebServlet("/DoAdd")
public class DoAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	//获取UUID，作为各表的id的值
	public static String makeUUID() {
		return UUID.randomUUID().toString();
	}
	DepartmentService departmentservice=new DepartmentServiceImpl();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String d_id=request.getParameter("d_id");
		String d_name=request.getParameter("d_name");
		Float d_aver_score=Float.parseFloat(request.getParameter("d_aver_score"));		
		String d_des=request.getParameter("d_des");
		String type_id=request.getParameter("type_id");
		System.out.println(d_id);
		System.out.println(d_name);

		//System.out.println("未加密密码"+userPassword+"UUID:"+makeUUID());
		Department department=new Department();
//		department.setUserId(makeUUID());
		department.setD_id(d_id);
		department.setD_name(d_name);
		department.setD_aver_score(d_aver_score);
		department.setD_des(d_des);
		department.setType_id(type_id);
		
		int row = departmentservice.doAdd(department);
		if(row>0) {
	        response.sendRedirect(request.getContextPath()+"/findAll");
		}else {
			response.sendRedirect(request.getContextPath()+"/views/department/addDep.jsp");
		}
	}	
	
	
}