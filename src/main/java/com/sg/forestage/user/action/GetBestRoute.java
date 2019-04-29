package com.sg.forestage.user.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sg.common.util.BestRouteUtil;
import com.sg.forestage.user.entity.User;
import com.sg.forestage.user.service.UserService;
import com.sg.forestage.user.service.UserServiceImpl;

/**
 * Servlet implementation class GetBestRoute
 */
@WebServlet("/GetBestRoute")
public class GetBestRoute extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		User user=(User) session.getAttribute("userSession");
		String userId = user.getUserId();
		System.out.println(userId);
		UserService userService = new UserServiceImpl();
		List<String> hobbyNameList = new ArrayList();
		hobbyNameList = userService.getHobbyList(userId);
		System.out.println("获得的用户所有感兴趣的项目："+hobbyNameList);
		if(hobbyNameList==null) {
			response.sendRedirect(request.getContextPath()+"/views/catalog/index.jsp");
		}

		//用户喜欢的项目
		System.out.println("用户喜欢的项目-------------------->");
		for (String hobbyName : hobbyNameList) {
			System.out.println(hobbyName);
		}
		
		//获得用户喜欢项目的类型
		System.out.println("获得用户喜欢项目的类型-------------------->");
		String[] typeLikes = request.getParameterValues("data");
		for (String typeLike : typeLikes) {
			System.out.println(typeLike);
		}
		
		Object result[][] = BestRouteUtil.get(hobbyNameList,typeLikes,3);
		System.out.println("**************最佳路线***********************");
		for (int i = 0; i < result.length; i++) {
			System.out.println(i+"========"+result[i][0] + "===========" + result[i][1]);
	 }
		response.sendRedirect(request.getContextPath()+"/views/catalog/index.jsp");
	}
}
