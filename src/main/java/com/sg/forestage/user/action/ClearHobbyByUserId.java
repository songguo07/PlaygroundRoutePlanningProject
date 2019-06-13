package com.sg.forestage.user.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sg.forestage.user.entity.User;
import com.sg.forestage.user.service.UserService;
import com.sg.forestage.user.service.UserServiceImpl;

/**
 * Servlet implementation class ClearHobbyByUserId
 */
@WebServlet("/ClearHobbyByUserId")
public class ClearHobbyByUserId extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("userSession");
		UserService userService = new UserServiceImpl();
		PrintWriter out = response.getWriter();
		response.setContentType("text/html;charset=utf-8");
		//&&userService.deleteAllHobbyByUserId(user.getUserId())!=0
		session.removeAttribute("selectProjectNames");
		session.removeAttribute("weight");
		session.removeAttribute("result");
		session.removeAttribute("hadEva");
		session.removeAttribute("hadDone");
		if(user!=null) {
			System.out.println("不退出只删除用户单次选择项目**************进入Servlet的if");
			System.out.println("不退出只要删除用户爱好的id："+user.getUserId());
            out.println("" + ((HttpServletRequest) request).getContextPath() + "/views/catalog/index.jsp");
		}else {
			System.out.println("不退出只删除用户单次选择项目**************进入Servlet的else");
            out.println("error");
		}
	}

}
