<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">   
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>登录界面</title>
</head>

<body  background="img/2012070509053227.jpg"  style="background-size:cover">
    <center>
    <br><br><br><br><br><br>
    <br><br><br><br><br><br>
    <h1 style="color:yellow">管理用户信息</h1>
    <br>
    <form name="registerForm" action="AdminoneServlet" method="post">   
          <table Border="0" >
                    <tr >
                    
                        <td>用户账户</td>
                        <td><input type="text" name="USER_ID"></td>
                    </tr>
              
               </table>
               <br>
                <a href="pp.jsp"><input type="button" style="color:#BC8F8F" value="取消"></a>
                <input type="submit" value="查询" style="color:#BC8F8F">
    </form>
    </center>
</body>
</html>