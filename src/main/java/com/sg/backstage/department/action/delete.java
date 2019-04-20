package com.sg.backstage.department.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sg.backstage.department.service.DepartmentService;
import com.sg.backstage.department.service.DepartmentServiceImpl;

@WebServlet("/delete")
public class delete extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=utf-8");
        /*
            删除指定id的用户信息.
         */
        // 获取到用户的id.
        String d_id = request.getParameter("d_id");
        System.out.println("1");
        // 创建UserService对象 , 并调用其删除方法.
        DepartmentService departmentservice=new DepartmentServiceImpl();
        departmentservice.deleById(d_id);
        System.out.println("2");
        // 删除成功之后 , 重定向到findAll页面 , 更新删除后的数据.
        response.sendRedirect(request.getContextPath()+"/findAll");
    }
}
