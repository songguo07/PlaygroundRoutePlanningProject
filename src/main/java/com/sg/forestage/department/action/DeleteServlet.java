package com.sg.forestage.department.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sg.common.util.BestRouteUtil;
import com.sg.forestage.user.entity.User;
import com.sg.forestage.user.service.UserService;
import com.sg.forestage.user.service.UserServiceImpl;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("DeleteServlet评价后删除该项目");
		String dName = request.getParameter("d_name");
		UserService userService = new UserServiceImpl();
		System.out.println("设置该项目的权值为-10000");
		if(dName==null) {
			dName=(String) request.getSession().getAttribute("d_name");
			Object o = request.getSession().getAttribute("weight");
			Set<String> weight = new HashSet<String>();
			if(o!=null) {
				weight = (Set<String>) o;
			}
			weight.add(dName);
			for (String string : weight) {
				System.out.println("设置权值为-10000的点：       "+string);
			}
			Set<String> hadEva = new HashSet<String>();
			o=request.getSession().getAttribute("hadEva");
			if(o!=null) {
				hadEva=(Set<String>) o;
			}
			hadEva.add(dName);
			request.getSession().setAttribute("weight", weight);
			request.getSession().setAttribute("hadEva", hadEva);
		}else {
			System.out.println(dName);
			Object o = request.getSession().getAttribute("weight");
			Set<String> weight = new HashSet<String>();
			if(o!=null) {
				weight = (Set<String>) o;
			}
			weight.add(dName);
			for (String string : weight) {
				System.out.println("设置权值为-10000的点：       "+string);
			}
			
			User user = new User();
			o=request.getSession().getAttribute("userSession");
			if(o!=null) user=(User) o;
			System.out.println("获得用户的id"+user);
			List<String> hobbyNameList = new ArrayList<String>();
			hobbyNameList = userService.getHobbyList(user.getUserId());
			System.out.println("获得用户的喜欢的项目："+hobbyNameList);
			
			o=request.getSession().getAttribute("typeLikes");
			String [] typeLikes=(String[]) o;
			System.out.println("获得用户喜欢的类型==============");
			for (String string : typeLikes) {
				System.out.println(string);
			}
			
			Object result[][]=BestRouteUtil.get(hobbyNameList, typeLikes, 3, weight);
			request.getSession().setAttribute("result", result);
			request.getSession().setAttribute("length", result.length);
			request.getSession().setAttribute("weight", weight);
		}
		
		response.sendRedirect("/playgroundRoutePlanning/views/catalog/route.jsp");
		}

	//设置权值
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dName = request.getParameter("dName");
		Object o = request.getSession().getAttribute("weight");
		Set<String> weight = new HashSet<String>();
		if(o!=null) {
			weight = (Set<String>) o;
		}
		weight.add(dName);
		System.out.println("设置为-10000的点====================");
		for (String string : weight) {
			System.out.println(string);
		}
		System.out.println("结束==============================");
		o = request.getSession().getAttribute("hadDone");
		Set<String> hadDone = new HashSet<String>();
		request.getSession().setAttribute("weight", weight);
		if(o!=null) {
			hadDone=(Set<String>) o;
		}
		hadDone.add(dName);
		request.getSession().setAttribute("hadDone", hadDone);
		response.getWriter().write("yes");
	}

}
