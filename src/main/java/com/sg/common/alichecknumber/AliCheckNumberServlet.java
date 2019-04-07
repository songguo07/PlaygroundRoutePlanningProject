package com.sg.common.alichecknumber;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aliyuncs.exceptions.ClientException;

/**
 * Servlet implementation class AliCheckNumberServlet
 */
@WebServlet("/AliCheckNumberServlet")
public class AliCheckNumberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userTelno = request.getParameter("userTelno");
		System.out.println(userTelno);
		String randomSMSCode = SmsUtil.getRandomSMSCode(5,true);
		try {
			
			if(SmsUtil.sendSms(userTelno,randomSMSCode)) {
				System.out.println("短信发送成功");
				response.getWriter().print(randomSMSCode); // 将结果返回到前端
			}
		} catch (ClientException e) {
			e.printStackTrace();
		}
	}

}
