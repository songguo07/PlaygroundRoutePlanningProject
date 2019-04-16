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

@WebServlet("/selectById")
public class selectById extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=utf-8");
        // 获取传递过来的参数(查询条件)
        String d_id = request.getParameter("d_id");
        String d_name = request.getParameter("d_name");

        // 创建UserService对象 , 并调用其方法.1
        DepartmentService departmentservice=new DepartmentServiceImpl();
        //List<Department> department = departmentservice.selectById(d_id);
        List<Department> department = departmentservice.selectById(d_id,d_name);

        // 将信息设置到域中
        request.setAttribute("department",department);
        // 将选择的条件也设置到域中 , 方便回显.
        request.setAttribute("d_id",d_id);
        request.setAttribute("d_name",d_name);
        // 请求转发到list页面 ,进行展示.
        request.getRequestDispatcher("/views/department/searchDep.jsp").forward(request,response);
    }
}
