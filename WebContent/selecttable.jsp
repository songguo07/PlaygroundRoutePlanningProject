<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.sg.backstage.admin.entity.Admin,com.sg.backstage.admin.entity.ResumeBasicinfo"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

  <head>
    <title>Test-newsTitle</title>
  </head>
  
 <body background="img/2012070509053227.jpg"  style="background-size:cover">
<center>
<tr>
<tr>
  <table border="1">
      <tr>
          <td>用户账户</td>
          <td>用户电话</td>
          <td>用户姓名</td>
          <td>年龄</td>
          <td>性别</td>
          <td>密码</td>
          
      </tr>
        <%
        Admin dao=new Admin();
        List<ResumeBasicinfo> list =dao.readFirstTitle();    
        for(ResumeBasicinfo tl:list)
        {%>
        
       <tr>
           <td><%=tl.getuser_id() %></td>
           <td><%=tl.getuser_telno() %></td>
           <td><%=tl.getuser_nickname() %>></td>
           <td><%=tl.getuser_age() %></td>
           <td><%=tl.getuser_gender() %></td>
           <td><%=tl.getuser_password() %></td>
       </tr>
       
         <%}
    %>
</table></center>

</body>
</html>
