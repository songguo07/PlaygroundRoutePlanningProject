package com.sg.forestage.user.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sg.common.alichecknumber.AliCheckNumberServlet;
import com.sg.common.wangyichecknumber.SMSUtils;
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
		String checkNumber= request.getParameter("checkNumber");
		String reallyCheckNumber= request.getParameter("reallyCheckNumber");
		System.out.println("Servlet:Dologin------>userTelno:" + userTelno);
		System.out.println("Servlet:Dologin------>userPassword:" + userPassword);
		System.out.println("Servlet:Dologin------>reallyCheckNumber:" + reallyCheckNumber);
		UserService userService = new UserServiceImpl();
		User user = userService.doLogin(userTelno.trim(), userPassword.trim());
		/**网易云需要修改两个地方：
		 * 1，网易云验证输入验证码是否一致，在Dologin中修改这个
		 * SMSUtils.verifyCode(userTelno, checkNumber)
		 * 2，在login.jsp form表单中提交URL到CaptchaMsgServlet
		 * &&reallyCheckNumber.equals(checkNumber)
		 */
		if(user!=null) {
			HttpSession session=request.getSession();
			session.setAttribute("userSession", user);
			response.sendRedirect(request.getContextPath()+"/views/catalog/index.jsp");
		}else {
			response.sendRedirect(request.getContextPath()+"/views/login_regist/regist.jsp");
		}
	}

}
