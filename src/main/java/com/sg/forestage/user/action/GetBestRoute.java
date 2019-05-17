package com.sg.forestage.user.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.sg.common.util.BestRouteUtil;
import com.sg.forestage.user.entity.User;
import com.sg.forestage.user.service.UserService;
import com.sg.forestage.user.service.UserServiceImpl;

@WebServlet("/GetBestRoute")
public class GetBestRoute extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserService userService = new UserServiceImpl();
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Object o = request.getSession().getAttribute("result");
		Object[][] result=(Object[][])o;
		int array[]=BestRouteUtil.getArray(result);
		response.getWriter().write(new Gson().toJson(array));
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		User user=(User) session.getAttribute("userSession");
		String userId = user.getUserId();
		System.out.println("GetBestRoute的用户id:"+userId);
		List<String> hobbyNameList = new ArrayList<String>();
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
		System.out.println(typeLikes);
		if(typeLikes!=null) {
			for (String typeLike : typeLikes) {
				System.out.println(typeLike);
			}
		}
		request.getSession().setAttribute("typeLikes", typeLikes);
		Object o=request.getSession().getAttribute("weight");
		Set<String> weight = null;
		if(o!=null) {
			weight=(Set<String>) o;
		}
		Object result[][] = BestRouteUtil.get(hobbyNameList,typeLikes,3,weight);
		System.out.println("**************最佳路线***********************");
		for (Object[] objects : result) {
			System.out.println("++++++++++++"+objects[0]);
		}
		Map<String,String> pinyin=BestRouteUtil.getPinMap();
		request.getSession().setAttribute("pinyin", pinyin);
		request.getSession().setAttribute("result", result);
		request.getSession().setAttribute("length", result.length);
		response.getWriter().write("yes");
	}
}
