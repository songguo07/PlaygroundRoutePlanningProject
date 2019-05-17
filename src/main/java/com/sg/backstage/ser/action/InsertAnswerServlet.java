package com.sg.backstage.ser.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sg.backstage.ser.service.SerService;
import com.sg.backstage.ser.service.SerServiceImpl;

@WebServlet("/InsertAnswerServlet")
public class InsertAnswerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private SerService serService = new SerServiceImpl();
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("userId");
		String content = request.getParameter("content");
		List<String> answerList = null;
		Object o = request.getSession().getAttribute("answerList");
		if(o!=null) {
			answerList = (List<String>) o;
		}else {
			answerList = new ArrayList<String>();
		}
		answerList.add(content);
		request.getSession().setAttribute("answerList", answerList);
		serService.insertAnswer(userId, content);
		response.sendRedirect("views/backstage/ser/answer.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
