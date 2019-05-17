<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<title>咨询客服页面</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/static/06/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/static/06/css/style.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/static/06/css/jquery.mobile.flatui.css" />
</head>
<body>
<c:set var="times" value="0"></c:set>
	<div data-role="page">
		<div data-role="content" class="container" role="main">
			<ul class="content-reply-box mg10">
				<c:forEach items="${consultList }" var="question">
					<c:choose>
						<c:when test="${question.flag=='1' }">
							<c:choose>
								<c:when test="${question.say_id!=null }">
									<li class="even"><a class="user" href="#">
									<img class="img-responsive avatar_" alt="">&nbsp;&nbsp;用户
									<span
											class="user-name">${userId }</span></a>
										<div class="reply-content-box">
											<span class="reply-time">${question.conDate }</span>
											<div class="reply-content pr" style="text-align: right;display: inline;float: right;">
												<span class="arrow">&nbsp;</span> ${question.content }
											</div>
										</div></li>
								</c:when>
								<c:otherwise>
									<li class="odd"><a class="user" href="#">
									<img class="img-responsive avatar_" alt="">&nbsp;&nbsp;松果
									<span class="user-name">客服</span></a>
										<div class="reply-content-box">
											<span class="reply-time">${question.conDate }</span>
											<div class="reply-content pr" style="text-align: left;display: inline;float: left;">
												<span class="arrow">&nbsp;</span> ${question.content }
											</div>
										</div></li>
								</c:otherwise>
							</c:choose>
						</c:when>
						<c:otherwise>
							<c:if test="${times==0 }">
								<p style="text-align: center; color: black;">以上为历史消息</p>
								<c:set value="1" var="times"></c:set>
							</c:if>
							<c:choose>
								<c:when test="${question.say_id!=null }">
									<li class="even"><a class="user" href="#">
									<img class="img-responsive avatar_" alt="">&nbsp;&nbsp;用户
									<span class="user-name">${userId }</span></a>
										<div class="reply-content-box">
											<span class="reply-time">${question.conDate }</span>
											<div class="reply-content pr" style="text-align: right;display: inline;float: right;" >
												<span class="arrow">&nbsp;</span> ${question.content }
											</div>
										</div></li>
								</c:when>
								<c:otherwise>
									<li class="odd"><a class="user" href="#">
									<img class="img-responsive avatar_" alt="">&nbsp;&nbsp;松果
									<span class="user-name">客服</span></a>
										<div class="reply-content-box" style="display: inline;">
											<span class="reply-time">${question.conDate }</span>
											<div class="reply-content pr" style="text-align: left;display: inline;float: left;">
												<span class="arrow">&nbsp;</span> ${question.content }
											</div>
										</div></li>
								</c:otherwise>
							</c:choose>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${times==0 }">
					<p style="text-align: center; color: black;">以上为历史消息</p>
					<c:set value="1" var="times"></c:set>
				</c:if>


			</ul>
			<form
				action="${pageContext.request.contextPath }/InsertQuestionServlet"
				method="post" id="form">
				<ul class="operating row text-center linear-g" style="height: 80px">
					<input type="text" name="content" id="input"
						style="width: 100%; height: 78px;" placeholder="请输入信息内容"></input>
				</ul>
				<ul class="operating row text-center linear-g">
					<li class="col-xs-4" style="float: right;" onclick="fasong();"><a><span
							class="glyphicon glyphicon-comment"></span> &nbsp;发送</a></li>
					<li class="col-xs-4" style="float: right;"><a  href="../catalog/index.jsp"><span
							class="glyphicon glyphicon-comment"></span> &nbsp;首页</a></li>
				</ul>
				<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
			</form>
		</div>
	</div>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/static/06/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/static/06/js/jquery.mobile-1.4.0-rc.1.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/03/assets/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript">
		function fasong() {
			var content = document.getElementById("input").value;
			if (content == '') {
				alert("输入信息不能为空")
			} else {
				document.getElementById("form").submit();
			}
		}
	</script>
</body>
</html>

