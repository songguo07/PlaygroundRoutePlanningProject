package com.sg.forestage.user.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sg.forestage.user.entity.Evaluate;
import com.sg.forestage.user.entity.User;
import com.sg.forestage.user.service.UserService;
import com.sg.forestage.user.service.UserServiceImpl;

@WebServlet("/DoAddEvaluate")
public class DoAddEvaluate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	UserService userservice=new UserServiceImpl();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		System.out.print("进入servlet");
		String dId=request.getParameter("dId");
		Float eScore=Float.parseFloat(request.getParameter("score"));
		String eEvaluate=request.getParameter("content");
		HttpSession session = request.getSession(); 
		User user = (User) session.getAttribute("userSession");
		String userid=user.getUserId();
		
		System.out.println("**************输出用户的评分评价**********************");
		System.out.println(dId);
		System.out.println(eScore);
		System.out.println(eEvaluate);
		System.out.println("***********************************************");
		Evaluate evaluate=new Evaluate();
		
		evaluate.setUserId(userid);
		evaluate.setdId(dId);
		evaluate.seteScore(eScore);
		evaluate.seteEvaluate(eEvaluate.trim());
		
		int row = userservice.doAdd(evaluate);
		if(row>0) {
	        response.sendRedirect(request.getContextPath()+"/views/catalog/index.jsp");
		}else {
			response.sendRedirect(request.getContextPath()+"/views/evaluate/evaluate.jsp");
		}
	}

}
