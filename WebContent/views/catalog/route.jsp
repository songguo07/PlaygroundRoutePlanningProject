<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	th{
		width: 150px;
		border-bottom: solid 1px;
		text-align: center;
	}
	td{
		width: 150px;
		border-bottom: solid 1px;
		text-align: center;
	}
	.cla{
		color: red;
	}
	a{
		text-decoration: none;
	}
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/03/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	function sel(data1,data2){
		document.getElementById("h").innerHTML=data2+"的等待时间为："+data1;
	}
	
	function complete(data1,data2){
		$("#tbody").append('<tr><td>'+data1+'</td><td><a href="http://localhost:8080/playgroundRoutePlanning/DesServlet?depName='+data1+'">评价</a></td></tr>')
		$("#"+data2).addClass("cla");
	}
</script>
</head>
<body style="background-image:url('/playgroundRoutePlanning/static/image/all.jpg'); background-repeat: no-repeat;background-size: 100% 640px;">
<button style="margin-left: 900px"><a href="#">导航</a></button>
<c:set var="index" value="1"></c:set>
<div id="h" style="text-align: center;font-family: 楷体;margin-top: 50px;font-size: 30px"></div>
<div style="text-align: center;font-family: 楷体;margin-top: 10px;font-size: 30px">已经玩完一个项目，请双击</div>
	<div style="margin-left: 300px;margin-top: 30px; display: block;width: 1000px;height:200px;">
	<c:forEach var="dep" items="${result }" end="${length-2 }">
		<div style="display:inline-block;width: 205px;height: 90px;">
		<input value="${dep[0] }" type="radio" style="margin: 0"><hr style="width:190px;display: inline-block;margin-left: 0;margin-right: 0" onclick="sel('${dep[1]}','${dep[0] }')"><br>
		<a onclick="sel('${dep[1]}','${dep[0] }')" id="${index }" ondblclick="complete('${dep[0]}','${index }')">${index }:${dep[0] }</a>
		<c:set var="index" value="${index+1 }"></c:set>
	</div>
	</c:forEach>
	<c:forEach var="dep" items="${result }" begin="${length-1 }" end="${length-1 }">
		<div  onclick="sel('${dep[1]}','${dep[0] }')" style="display:inline-block;width: 185px;height: 90px;" ondblclick="complete('${dep[0]}','${index }')" id="${index }">
		<input type="radio" style="margin: 0"><br>
		${index }:${dep[0] }
	</div>
	</c:forEach>
	</div>
	<table style="margin-left: 400px;">
	<caption>已经玩完的项目</caption>
		<tr>
			<th>项目名称</th><th>操作</th>
		</tr>
		<tbody id="tbody">
		
		</tbody>
	</table>
</body>
</html>