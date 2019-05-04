package com.sg.forestage.department.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sg.forestage.department.service.DepartmentService;
import com.sg.forestage.department.service.DepartmentServiceImpl;
import com.sg.forestage.user.entity.Evaluate;


@WebServlet("/GetEvaluateByDId")
public class GetEvaluateByDId extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String dId=request.getParameter("dId");
		System.out.println("GetEvaluateByDId  Servlet获得的dId:"+dId);
		DepartmentService departmentService = new DepartmentServiceImpl();
		List<Evaluate> evaluateList = departmentService.getDepartmentEvaluByDId(dId);
		if(evaluateList!=null) {
			System.out.println("获得的所有评价List"+evaluateList);
			request.setAttribute("evaluateList", evaluateList);
			request.setAttribute("aaa", "aaa");
		}else {
			request.setAttribute("evaluateList", evaluateList);
		}
		request.getRequestDispatcher("/views/catalog/jlbhd.jsp").forward(request, response);
	}

}
