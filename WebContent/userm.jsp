<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body background="imge/webjong_cartoon_girl_1036275_top.jpg"  style="background-size:cover">
<center>
    <br><br><br><br><br><br>
    <h1 style="color:black">用户信息管理</h1>
    <br>
<form name="registerForm" action="AdminServlet" method="post">   
 <select name="name">
      <option value="用户账户">用户账户</option>
      <option value="所有信息" selected>所有信息</option>
  </select>
  <br>
  <br>
  <br>
  <br>
          <a href="selectname.jsp"><input type="button" style="color:black" value="取消"></a>
          <input type="submit" value="查询" style="color:black">
</form>      
</body>
</html>