package com.sg.common.wangyichecknumber;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CaptchaMsgServlet
 */
@WebServlet("/CaptchaMsgServlet")
public class CaptchaMsgServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userTelno = request.getParameter("userTelno");
		System.out.println(userTelno);
		if(SMSUtils.isMobile(userTelno)){
			try {
				//3082003 我的：4093536
				SMSUtils.sendCode(userTelno,"3963469");//发送验证码
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
         response.getWriter().print("ok"); // 将结果返回到前端
	}

}
