package com.sg.forestage.user.action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sg.forestage.user.service.UserService;
import com.sg.forestage.user.service.UserServiceImpl;

/**
 * Servlet implementation class DoChangePassword
 */
@WebServlet("/DoChangePassword")
public class DoChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userTelno = request.getParameter("userTelno");
		String userPassword= request.getParameter("userPassword");
		String checkNumber= request.getParameter("checkNumber");
		String reallyCheckNumber= request.getParameter("reallyCheckNumber");
		if(checkNumber.trim().equals(reallyCheckNumber.trim())) {
			UserService userService = new UserServiceImpl();
			int row = userService.doChangePassword(userTelno.trim(), userPassword.trim());
			if(row>0) {
				response.sendRedirect(request.getContextPath()+"/views/login_regist/login.jsp");
			}
		}else{
			response.sendRedirect(request.getContextPath()+"/views/login_regist/forget_password.jsp");
		}
	}

}
