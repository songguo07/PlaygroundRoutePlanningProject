package com.sg.forestage.user.action;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sg.forestage.user.entity.User;
import com.sg.forestage.user.service.UserService;
import com.sg.forestage.user.service.UserServiceImpl;

/**
 * Servlet implementation class DoRegist
 */
@WebServlet("/DoRegist")
public class DoRegist extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	//获取UUID，作为各表的id的值
	public static String makeUUID() {
		return UUID.randomUUID().toString();
	}
	UserService userservice=new UserServiceImpl();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.print("进入DoRegist");
		String userTelNo=request.getParameter("userTelNo");
		String userNickname=request.getParameter("userNickname");
		String userPassword=request.getParameter("userPassword");
		System.out.println(userTelNo);
		System.out.println(userNickname);

		System.out.println("未加密密码"+userPassword+"UUID:"+makeUUID());
		User user=new User();
		user.setUserId(makeUUID());
		user.setUserTelno(userTelNo.trim());
		user.setUserNickname(userNickname.trim());
		user.setUserPassword(userPassword.trim());
		
		int row = userservice.doRegist(user);
		if(row>0) {
	        response.sendRedirect(request.getContextPath()+"/views/login_regist/login.jsp");
		}else {
			response.sendRedirect(request.getContextPath()+"/views/login_regist/regist.jsp");
		}
	}
}
