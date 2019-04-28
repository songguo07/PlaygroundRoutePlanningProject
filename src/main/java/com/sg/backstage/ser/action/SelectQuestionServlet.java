package com.sg.backstage.ser.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.sg.backstage.ser.entity.Consult;
import com.sg.backstage.ser.entity.ConsultLength;
import com.sg.backstage.ser.service.SerService;
import com.sg.backstage.ser.service.SerServiceImpl;
import com.sg.common.entity.ResMsg;


/**
 * 查询未读的用户咨询客服的信息
 * 
 * @author QYJ
 *
 */
@WebServlet("/SelectQuestionServlet")
public class SelectQuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private SerService serService = new SerServiceImpl();
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		List<Consult> qesList = null;
		qesList = serService.getRes();
		ResMsg resMsg = new ResMsg();
		if(qesList!=null) {
			request.getSession().setAttribute("qesList", qesList);
			resMsg.setResId("0");
			resMsg.setMessage("查询成功");
			Map<String,ConsultLength> userMap = serService.getUserMap(qesList);
			request.getSession().setAttribute("userLength", userMap);
		}else {
			resMsg.setResId("1");
			resMsg.setMessage("暂时没有用户咨询客服");
		}
		for (Consult consult : qesList) {
			System.out.println(consult);
		}
		response.getWriter().write(new Gson().toJson(resMsg));
	}

}
