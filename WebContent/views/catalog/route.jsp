<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
th {
	width: 150px;
	border-bottom: solid 1px;
	text-align: center;
}

td {
	width: 150px;
	border-bottom: solid 1px;
	text-align: center;
}

.cla {
	color: red;
}

a {
	text-decoration: none;
	font-family: 楷体;
}
#oDiv{
	font-family: 楷体;
	text-align: center;
}
</style>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/03/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	function sel(data1, data2) {
		$("#oDiv").remove();
        var oDiv=document.createElement('div');
        oDiv.id='oDiv';
        oDiv.style.left='30px';  // 指定创建的DIV在文档中距离左侧的位置
        oDiv.style.top='100px';  // 指定创建的DIV在文档中距离顶部的位置
        oDiv.style.border='1px solid #0000ff'; // 设置边框
        oDiv.style.position='absolute'; // 为新创建的DIV指定绝对定位
        oDiv.style.width='200px'; // 指定宽度
        oDiv.style.height='200px'; // 指定高度
        oDiv.innerHTML='<br><br>'+data1+'的等待时间为:'+data2+'分钟<br><br><br><button><a href="http://localhost:8080/playgroundRoutePlanning/DeleteServlet?d_name='+data1+'">我不想玩这个</a></button>';
        document.body.appendChild(oDiv); 
	}

	function complete(data1, data2) {
		if($('.'+data1).text()!=data1){
			$("#tbody").append(
					'<tr><td class="'+data1+'">'+ data1+ '</td><td><a href="http://localhost:8080/playgroundRoutePlanning/DesServlet?depName='+ data1 + '">评价</a></td></tr>')
			$("#" + data2).addClass("cla");
		}
	}
</script>
</head>
<body
	style="background-image: url('/playgroundRoutePlanning/static/image/all.jpg'); background-repeat: no-repeat; background-size: 100% 640px;">
	<c:if test="${length==0 }">
		<c:redirect>index.jsp</c:redirect>
	</c:if>
	<br><br><br>
	<button style="margin-left: 600px;">
		<a href="showMap.jsp" style="color: red">导航</a>
	</button>
	<c:set var="index" value="1"></c:set>
	<div
		style="text-align: center; font-family: 楷体; margin-top: 10px; font-size: 20px">已经玩完一个项目，请双击</div>
	<div
		style="margin-left: 300px; margin-top: 30px; display: block; width: 1000px; height: 300px;">
		<c:choose>
			<c:when test="${length<=2 }">
				<c:forEach var="dep" items="${result }" begin="${length-1 }" end="${length-1 }">
					<div onclick="sel('${dep[0]}','${dep[1] }')"
						style="display: inline-block; width: 185px; height: 90px;"
						ondblclick="complete('${dep[0]}','${index }')" id="${index }">
						<input type="radio" style="margin: 0"><br> ${index }:${dep[0] }
					</div>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<c:forEach var="dep" items="${result }" end="${length-2 }">
					<div style="display: inline-block; width: 205px; height: 90px;">
						<input value="${dep[0] }" type="radio" style="margin: 0">
						<hr style="width: 185px; display: inline-block; margin-left: 0; margin-right: 0"
							onclick="sel('${dep[0]}','${dep[1] }')">
						<br> <a onclick="sel('${dep[0]}','${dep[1] }')"
							id="${index }" ondblclick="complete('${dep[0]}','${index }')">${index }:${dep[0] }</a>
						<c:set var="index" value="${index+1 }"></c:set>
					</div>
				</c:forEach>
				<c:forEach var="dep" items="${result }" begin="${length-1 }"
					end="${length-1 }">
					<div onclick="sel('${dep[0]}','${dep[1] }')"
						style="display: inline-block; width: 185px; height: 90px;font-family: 楷体;"
						ondblclick="complete('${dep[0]}','${index }')" id="${index }">
						<input type="radio" style="margin: 0"><br> ${index }:${dep[0] }
					</div>
				</c:forEach>
			</c:otherwise>
		</c:choose>

	</div>
	<table style="margin-left: 400px;">
		<caption>已经玩完的项目</caption>
		<tr>
			<th>项目名称</th>
			<th>操作</th>
		</tr>
		<tbody id="tbody">

		</tbody>
	</table>
</body>
</html>