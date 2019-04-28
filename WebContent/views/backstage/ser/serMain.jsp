<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>客服主页</title>
<script src="../../../static/01/lib/jquery-1.8.1.min.js" type="text/javascript"></script>
<script type="text/javascript">
$(function(){
	$.ajax({
		type:"post",
		url:"../../../SelectQuestionServlet",
		dataType:"JSON",
		success:function(data){
			alert(data)
			if(data.code=="1"){
				alert(data.message)
			}
		}
	});
	});
</script>
</head>
<body>
	<div style="width:100px;height:25px">
		<a href="qes.jsp">您有${qesList.size()} 条消息未处理，点击查看</a>
	</div>
</body>
</html>