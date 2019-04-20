<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body background="img/2012070509053227.jpg"  style="background-size:cover">
<center>
    <br><br><br><br><br><br>
    <h1 style="color:yellow">学生信息查询</h1>
    <br>
<form name="registerForm" action="Selectservlet" method="post">   
 <select name="name">
      <option value="学生学号">学生学号</option>
      <option value="所有信息" selected>所有信息</option>
      <option value="学生姓名">学生姓名</option>
      <option value="院系名称">院系名称</option>
      
  </select>
  <br>
  <br>
  <br>
  <br>
          <a href="selectname.jsp"><input type="button" style="color:#BC8F8F" value="取消"></a>
          <input type="submit" value="查询" style="color:#BC8F8F">
</form>      
</body>
</html>