package com.sg.forestage.user.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sg.backstage.ser.entity.Consult;
import com.sg.forestage.user.entity.User;
import com.sg.forestage.user.service.UserService;
import com.sg.forestage.user.service.UserServiceImpl;

@WebServlet("/InsertQuestionServlet")
public class InsertQuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserService userService = new UserServiceImpl();   
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Object o = request.getSession().getAttribute("userSession");
		String content = request.getParameter("content");
		User user=new User();
		List<Consult> consultList =null;
		if(o!=null) {
			user=(User)o;
			String userId = user.getUserId();
			userService.insertQuestion(userId, content);
			consultList = userService.getAnswer(userId);
		}
		request.getSession().setAttribute("consultList", consultList);
		response.sendRedirect("views/consult/consult.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
