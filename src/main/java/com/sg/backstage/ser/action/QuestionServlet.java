package com.sg.backstage.ser.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sg.backstage.ser.entity.Consult;
import com.sg.backstage.ser.service.SerService;
import com.sg.backstage.ser.service.SerServiceImpl;

@WebServlet("/QuestionServlet")
public class QuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private SerService serService = new SerServiceImpl();
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		List<Consult> conList=new ArrayList<Consult>();
		List<Consult> conUserList=new ArrayList<Consult>();
		Object o =  request.getSession().getAttribute("qesList");
		if(o!=null) {
			String userId = request.getParameter("userId");
			conList=(List<Consult>) o;
			conUserList = serService.getUserQes(userId, conList);
			request.getSession().setAttribute("qes", conUserList);
			request.getSession().setAttribute("userId", userId);
		}
		response.sendRedirect("views/backstage/ser/answer.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
