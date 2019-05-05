<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	a{
		font:20px;
	}
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/03/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	function sel(data1,data2){
		document.getElementById("h").innerHTML=data2+"的等待时间为："+data1;
	}
</script>
</head>
<body style="background-image:url('/playgroundRoutePlanning/static/image/all.jpg'); background-repeat: no-repeat;background-size: 100% 640px;">
<c:set var="index" value="1"></c:set>
<div id="h" style="text-align: center;font-family: 楷体;margin-top: 50px;font-size: 30px"></div>
	<div style="margin-left: 300px;margin-top: 100px; display: block;width: 1000px;height:300px;">
	<c:forEach var="dep" items="${result }" end="${length-1 }">
		<div style="display:inline-block;width: 205px;height: 90px;">
		<input value="${dep[0] }" type="radio" style="margin: 0"><hr style="width:190px;display: inline-block;margin-left: 0;margin-right: 0" onclick="sel('${dep[1]}','${dep[0] }')"><br>
		<a onclick="sel('${dep[1]}','${dep[0] }')">${index }:${dep[0] }</a>
		<c:set var="index" value="${index+1 }"></c:set>
	</div>
	</c:forEach>
	<c:forEach var="dep" items="${result }" begin="${length-1 }" end="${length-1 }">
		<div style="display:inline-block;width: 185px;height: 90px;">
		<input type="radio" style="margin: 0"><br>
		${index }:${dep[0] }
	</div>
	</c:forEach>
	<!-- <c:forEach var="dep" items="${result }">
		${dep[0] }&nbsp;
	</c:forEach> -->
	</div>
	
</body>
</html>