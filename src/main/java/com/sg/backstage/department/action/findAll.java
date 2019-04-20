package com.sg.backstage.department.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sg.backstage.department.entity.Department;
import com.sg.backstage.department.service.DepartmentService;
import com.sg.backstage.department.service.DepartmentServiceImpl;

@WebServlet("/findAll")
public class findAll extends HttpServlet {
   
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 创建UserService对象 , 使用其方法.
    	DepartmentService departmentservice=new DepartmentServiceImpl();
        // 返回一个List集合 , 把user对象放到集合中.
        List<Department> list = departmentservice.findAll();

        // 将返回的list集合 , 添加到域对象中.
        request.setAttribute("department",list);

        // 成功之后 , 请求转发到jsp页面 , 给用户展示.
        request.getRequestDispatcher("/views/department/allDep.jsp").forward(request,response);
    }
}