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
 * Servlet implementation class DeleteAllHobby
 */
@WebServlet("/DeleteAllHobby")
public class DeleteAllHobby extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteAllHobby() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("userSession");
		UserService userService = new UserServiceImpl();
		PrintWriter out = response.getWriter();
		System.out.println("删除用户单次选择项目**************进入Servlet");
		response.setContentType("text/html;charset=utf-8");
		if(user!=null&&userService.deleteAllHobbyByUserId(user.getUserId())!=0) {
			System.out.println("删除用户单次选择项目**************进入Servlet的if");
			System.out.println("要删除用户爱好的id："+user.getUserId());
            out.println("" + ((HttpServletRequest) request).getContextPath() + "/views/login_regist/login.jsp");
            //用户推出，删除Session
            session.removeAttribute("userSession");
		}else {
			System.out.println("删除用户单次选择项目**************进入Servlet的else");
            out.println("error");
		}
		out.flush();
		out.close();
	}

}
