package com.sg.forestage.user.action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sg.forestage.user.entity.Evaluate;
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
		Float EvaluateGrade=Float.parseFloat(request.getParameter("evaluategrade"));
		String EvaluateText=request.getParameter("evaluatetext");
		/*HttpSession session = request.getSession(); 
		session.getAttribute("userSession");
		String userid=session.getAttribute("userId").toString();*/
		
		
		System.out.println(EvaluateGrade);
		System.out.println(EvaluateText);
		
		Evaluate evaluate=new Evaluate();
		
		/*evaluate.setUserId(userid);*/
		evaluate.setUserId("gxbh");
		evaluate.setDId("111");
		evaluate.setEscore(EvaluateGrade);
		evaluate.setEvaluate( EvaluateText.trim());
		
		int row = userservice.doAdd(evaluate);
		if(row>0) {
	        response.sendRedirect(request.getContextPath()+"/views/evaluate/score_evaluate.jsp");
		}else {
			response.sendRedirect(request.getContextPath()+"/views/evaluate/score_evaluate.jsp");
		}
	}

}
