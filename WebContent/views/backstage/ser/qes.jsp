<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>客户咨询消息列表</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" type="text/css" href="../../../static/01/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../../../static/01/lib/bootstrap/css/bootstrap-responsive.css">
    <link rel="stylesheet" type="text/css" href="../../../static/01/stylesheets/theme.css">
    <link rel="stylesheet" href="../../../static/01/lib/font-awesome/css/font-awesome.css">

    <script src="../../../static/01/lib/jquery-1.8.1.min.js" type="text/javascript"></script>
    <style type="text/css">
        #line-chart {
            height:300px;
            width:800px;
            margin: 0px auto;
            margin-top: 1em;
        }
        .brand { font-family: georgia, serif; }
        .brand .first {
            color: #ccc;
            font-style: italic;
        }
        .brand .second {
            color: #fff;
            font-weight: bold;
        }
    </style>
	<script type="text/javascript" src="${pageContext.request.contextPath }/static/01/lib/jquery-1.8.1.min.js"></script>
 	<script type="text/javascript">
	 	
 	</script>
  </head>

  <body> 
    
<div class="well" style="margin:150px">
    <table class="table">
      <thead>
        <tr>
          <th>用户编号</th>
          <th>用户昵称</th>
          <th>未读信息数</th>
          <th>发送时间</th>
          <th>查看</th>
          <th style="width: 26px;"></th>
        </tr>
      </thead>
      <tbody>
      	<c:forEach items="${userLength }" var="userQes">
        	<tr>
          		<td>${userQes.value.userId }</td>
          		<td>${userQes.value.userName }</td>
          		<td>${userQes.value.length }</td>
          		<td>${userQes.value.conDate}</td>
          		<td>
              		<a href="../../../QuestionServlet?userId=${userQes.value.userId }">查看详情<i class="icon-pencil"></i></a>
          		</td>
        	</tr>
       </c:forEach>
      </tbody>
    </table>
</div>


  </body>
</html>
