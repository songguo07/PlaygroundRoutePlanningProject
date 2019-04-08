<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>注册</title>

<!-- CSS -->
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/03/assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/03/assets/css/form-elements.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/03/assets/css/style.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<!-- Favicon and touch icons -->
<link rel="shortcut icon" href="${pageContext.request.contextPath}/static/03/assets/ico/favicon.png">
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath}/static/03/assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath}/static/03/assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath}/static/03/assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/static/03/assets/ico/apple-touch-icon-57-precomposed.png">


</head>

<body>

<!-- Content -->
<div class="top-content">
	
	<div class="inner-bg">
		<div class="container">
			<div class="row">
				<div class="col-sm-8 col-sm-offset-2 text">
					<a class="登录" href="login.jsp"></a>
					<h1><strong>松果公司</strong> 游乐园线路规划</h1>
					<div class="description">
						<p>
							松果服务，给你最优最快的路线，让您在游乐场天地不用等待
							快乐生活 <strong>松果</strong>, 是您无二的选择！
						</p>
					</div>
					<div class="top-big-link">
						<a class="btn btn-link-1 launch-modal" href="#" data-modal-id="modal-register">立即注册</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</div>
<div class="copyrights">Collect from <a href="http://www.cssmoban.com/"  title="网站模板">网站模板</a></div>
<!-- MODAL -->
<div class="modal fade" id="modal-register" tabindex="-1" role="dialog" aria-labelledby="modal-register-label" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
				</button>
				<h3 class="modal-title" id="modal-register-label">立即注册</h3>
				<p>请输入您的信息：</p>
			</div>
			
			<div class="modal-body">
				
				<form role="form" action="${pageContext.request.contextPath}/DoRegist" method="post" class="registration-form" id="myForm">
					<div class="form-group">
						<label class="sr-only" for="form-first-name">手机号</label>
						<input type="text" name="userTelNo" placeholder="请输入手机号" class="form-first-name form-control" id="tel_no">
					</div>
					<div class="form-group">
						<label class="sr-only" for="form-last-name">昵称</label>
						<input type="text" name="userNickname" placeholder="请输入昵称" class="form-last-name form-control" id="nickname">
					</div>
					<div class="form-group">
						<label class="sr-only" for="form-email">密码</label>
						<input type="password" name="userPassword" placeholder="请输入密码" class="form-email form-control" id="userPassword">
					</div>
					<div class="form-group">
						<label class="sr-only" for="form-email">再次密码</label>
						<input type="password" name="againUserPassword" placeholder="请再次输入密码" class="form-email form-control" id="againUserPassword" >
					</div>
					
					<button type="submit" class="btn">提交!</button>
				</form>
				
			</div>
			
		</div>
	</div>
</div>


<!-- Javascript -->
<script src="${pageContext.request.contextPath}/static/03/assets/js/jquery-1.11.1.min.js"></script>
<script src="${pageContext.request.contextPath}/static/03/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/static/03/assets/js/jquery.backstretch.min.js"></script>
<script src="${pageContext.request.contextPath}/static/03/assets/js/scripts.js"></script>
<script src="${pageContext.request.contextPath}/static/03/js/jquery.validate.js"></script>

<!--[if lt IE 10]>
	<script src="assets/js/placeholder.js"></script>
		$("#password").click(function(){
			alert("aaaaaaaaa");
		});
<![endif]-->
<script type="text/javascript">
	$(function(){
	
		$( "#myForm" ).validate({
			  rules: {
			    userPassword: "required",
			    againUserPassword: {
			      equalTo: "#userPassword"
			    }
			  },
			  //重设提示信息
			    messages:{
			    	userPassword: "请输入密码",
			    	againUserPassword: "密码输入不一致"
			    }
			});
	})


</script>
</body>
</html>