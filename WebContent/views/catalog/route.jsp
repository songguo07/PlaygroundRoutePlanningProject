<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${length==0 }">
	<c:redirect url="index.jsp"></c:redirect>
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>路线规划</title>
<link rel="icon" type="image/png" href="img/favicon.png">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
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

a {
	text-decoration: none;
	font-family: 楷体;
}
</style>
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="css/style.css" rel="stylesheet" media="screen">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/alert/jquery.alert.css" />

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="js/bootstrap/respond.min.js"></script>
    <script src="js/bootstrap/html5shiv.js"></script>
    <![endif]-->
<script
	src="${pageContext.request.contextPath}/static/03/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/alert/jquery.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/alert/jquery.easydrag.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/alert/jquery.alert.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/03/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	function complete(data1) {
		d(data1);
		if ($('.' + data1).text() != data1) {
			$("#tbody").append(
					'<tr id="'+data1+'"><td class="'+data1+'">' + data1
							+ '</td><td><a href="../../DesServlet?depName='
							+ data1 + '">评价</a></td></tr>')
		}

	}

	function d(data1) {
		$.ajax({
			type : "post",
			url : "../../DeleteServlet",
			data : {
				dName : data1
			},
			dataType : "text",
			success : function(data) {
			}
		});
	}
</script>
</head>
<body class="page-index">
	<div class="container" id="container">

		<div class="row top">
			<div class="col-lg-8 col-md-8 col-sm-7 col-left">
				<div class="name">
					<a href="index.jsp">游乐场路线规划</a>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-5 col-right">
				<nav>
					<ul class="list-inline" id="menu">
						<li><a
							href="${pageContext.request.contextPath}/views/catalog/index.jsp">首页</a>
						</li>
						<li><a
							href="${pageContext.request.contextPath}/views/catalog/blog.jsp">地图</a>
						</li>
						<li><a
							href="${pageContext.request.contextPath}/SelectAnswerServlet">客服</a>
						</li>
					</ul>
				</nav>
			</div>
		</div>
		<div class="row bottom">
			<div class="col-lg-8 col-md-8 col-sm-7 col-left">
				<div>
					<section>
						<div class="row text-center">
							<div class="col-lg-12">
							<br>
								<button>
									<a href="showMap.jsp" style="color: red">导航</a>
								</button>
								<br><br><br><br>
								<p>为保证您可以在最短的时间内游玩最多项目，请按顺序进行游玩！</p>
								<br><br><br><br>
									<table style="margin: auto;" id="table">
										<caption>已经玩完的项目</caption>
										<tr>
											<th>项目名称</th>
											<th>操作</th>
										</tr>
										<tbody id="tbody">
										</tbody>
									</table>
									<br><br><br><br><br><br>
							</div>
						</div>
					</section>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-5 col-right">
				<div id="scroll-shadow"></div>

				<h1 class="visible-xs section-header">游玩顺序</h1>
				<h1 class="visible-xs text-center spacer">__________</h1>


				<section class="row" id="Grid">

					<c:set var="index" value="1"></c:set>
					<c:forEach items="${result }" var="dep">
						<div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix excite">
							<div class="panel panel-default item">
								<div class="panel-heading">
									<img class="img-responsive item-img" src="img/play/${pinyin[dep[0]] }.jpg" alt="Work 5">
								</div>
								<div class="panel-body">
									<a href="${pageContext.request.contextPath}/GetEvaluateByDId?dId=2&fileName=jlbhd">
										<h4 class="item-title">${dep[0] }</h4>
									</a>
									<p class="item-category">等待时间：${dep[1] }</p>
									<p class="item-description">游玩顺序：${index }</p>
									<a href="${pageContext.request.contextPath }/DeleteServlet?d_name=${dep[0]}">
									<p class="item-description">不想玩这个？</p> </a>
									<p class="item-description" onclick="complete('${dep[0]}')">已经玩完该项目</p>
									
									<hr>
								</div>
							</div>
						</div>
						<c:set var="index" value="${index+1 }"></c:set>
					</c:forEach>

				</section>
			</div>
		</div>
	</div>
	
	<script src="js/jquery.js"></script>

	<!-- FASTCLICK -->
	<script src="js/plugins/fastclick/fastclick.js"></script>
	<!-- SMOOTH SCROLL -->
	<script src="js/plugins/smooth-scroll/jquery.smooth-scroll.min.js"></script>
	<!-- MIXITUP -->
	<script src="js/plugins/mixitup/jquery.mixitup.min.js"></script>

	<script src="js/main.js"></script>
	<c:forEach items="${hadDone }" var="had">
		<script type="text/javascript">
			complete("${had}");
		</script>
	</c:forEach>
	<c:forEach items="${hadEva }" var="eva">
		<script type="text/javascript">
			document.getElementById("${eva}").remove();
		</script>
	</c:forEach>
</body>
</html>

