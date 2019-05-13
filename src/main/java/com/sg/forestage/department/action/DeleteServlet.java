package com.sg.forestage.department.action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sg.common.util.BestRouteUtil;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dName = request.getParameter("d_name");
		if(dName==null) {
			dName=(String) request.getSession().getAttribute("d_name");
		}
		System.out.println(dName);
		Object o = request.getSession().getAttribute("result");
		if(o!=null) {
			Object result[][]=(Object[][]) o;
			Object reObject[][] = new Object[result.length-1][2];
			int j=0;
			for(int i=0;i<result.length;i++) {
				if(!result[i][0].equals(dName)) {
					reObject[j]=result[i];
					j++;
				}
			}
			request.getSession().setAttribute("result", reObject);
			request.getSession().setAttribute("length", reObject.length);
			response.sendRedirect("http://localhost:8080/playgroundRoutePlanning/views/catalog/route.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
