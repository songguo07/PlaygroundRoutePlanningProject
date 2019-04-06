package com.sg.forestage.user.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sg.forestage.user.entity.User;
import com.sg.forestage.user.service.UserService;
import com.sg.forestage.user.service.UserServiceImpl;


@WebServlet("/DoLogin")
public class DoLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userTelno = request.getParameter("userTelno");
		String userPassword= request.getParameter("userPassword");
		System.out.println(userTelno);
		System.out.println(userPassword);

		UserService userService = new UserServiceImpl();
		User user = userService.doLogin(userTelno.trim(), userPassword.trim());
		if(user!=null) {
			HttpSession session=request.getSession();
			session.setAttribute("userSession", user);
		//	response.sendRedirect(request.getContextPath()+"/views/login_regist/login.jsp");
		}else {
			response.sendRedirect(request.getContextPath()+"/views/login_regist/login.jsp");
		}
	}

}
