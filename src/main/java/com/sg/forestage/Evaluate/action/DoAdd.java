package com.sg.forestage.Evaluate.action;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sg.forestage.Evaluate.entity.Evaluate;
import com.sg.forestage.Evaluate.service.EvaluateService;
import com.sg.forestage.Evaluate.service.EvaluateServiceImpl;

/**
 * Servlet implementation class DoAdd
 */
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
	EvaluateService evaluateservice=new EvaluateServiceImpl();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String user_id=request.getParameter("userId");
		String d_id=request.getParameter("dId");
		Float e_score=request.getParameter("escore");
		String e_evaluate=request.getParameter("evaluate");
		System.out.println(user_id);
		System.out.println(d_id);
		System.out.println(e_score);
		System.out.println(e_evaluate);

		
		Evaluate e=new Evaluate();
		e.setUserId(user_id);
		e.setDId(d_id);
		e.setEvaluate(e_evaluate);
		e.setEscore(e_score);
		
		int row = evaluateservice.doAdd(e);
		if(row>0) {
	        response.sendRedirect(request.getContextPath()+"/static/02/contact.jsp");
		}else {
			response.sendRedirect(request.getContextPath()+"/static/02/contact.jsp");
		}
	}
}
