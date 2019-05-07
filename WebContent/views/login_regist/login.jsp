<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zxx">
<script src="${pageContext.request.contextPath}/static/03/assets/js/jquery-1.11.1.min.js"></script>

<head>
	<title>登录</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content=""
	/>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
		
		 
		var countdown=60; 
		function sendemail(){
		    var obj = $("#getCheckNumber");
		    settime(obj);
		    
		    }
		function settime(obj) { //发送验证码倒计时
		    if (countdown == 0) { 
		        obj.attr('disabled',false); 
		        //obj.removeattr("disabled"); 
		        obj.val("免费获取验证码");
		        countdown = 60; 
		        return;
		    } else { 
		        obj.attr('disabled',true);
		        obj.val("重新发送(" + countdown + ")");
		        countdown--; 
		    } 
		setTimeout(function() { 
		    settime(obj) }
		    ,1000) 
		}
		$(function(){
			$("#getCheckNumber").click(function(){
				sendemail();
				var value = $("#userTelno").val();
				$.ajax({
					url:"http://localhost:8080/playgroundRoutePlanning/AliCheckNumberServlet",
					cache:false,
					data:"userTelno="+value,
					dataType:"text",
					success:function(result){
<<<<<<< HEAD
						alert(result)
=======
						alert(result);
>>>>>>> dc4ae05857ee9bb4b5298413000b3069bda2c5d8
						$("#reallyCheckNumber").val(result);
					}
				});
			});
		});
	</script>
	<!-- Meta tag Keywords -->
	<!-- css files -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/03/css/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/03/css/fontawesome-all.css">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->
	<!-- web-fonts -->
	<link href="http://maxcdn.bootstrapcdn.com/css?family=Josefin+Sans:100,100i,300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
	<link href="http://maxcdn.bootstrapcdn.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	<!-- //web-fonts -->
</head>

<body>
	<!-- bg effect -->
	<div id="bg">
		<canvas></canvas>
		<canvas></canvas>
		<canvas></canvas>
	</div>
	<!-- //bg effect -->
	<!-- title -->
	<h1>游乐园线路规划</h1>
	<!-- //title -->
	<!-- content -->
	<div class="sub-main-w3">
		<form action="${pageContext.request.contextPath}/DoLogin" method="post">
			<h2>现在登录
				<i class="fas fa-level-down-alt"></i>
			</h2>
			<div class="form-style-agile">
				<label>
					<i class="fas fa-user"></i>
					手机号
				</label>
				<input placeholder="请输入手机号" name="userTelno" type="text" required="" id="userTelno" required="true">
			</div>
			<div class="form-style-agile">
				<label>
					<i class="fas fa-unlock-alt"></i>
					密码
				</label>
				<input placeholder="请输入密码" name="userPassword" type="password" required="true">
			</div>
			<div class="form-style-agile">
				<label>
					<i class="fas fa-unlock-alt"></i>
					验证码
				</label>
				<input placeholder="请输入验证码" name="checkNumber" type="text" required="true">
				<input  name="reallyCheckNumber" type="hidden" required="true" id="reallyCheckNumber">
				<cite><input type="button" id="getCheckNumber" class="loginbtn" value="点击获取验证码" />
				</cite>
			</div>
			<!-- checkbox -->
			<div class="wthree-text">
				<ul>
					<li>
						<a href="${pageContext.request.contextPath}/views/login_regist/regist.jsp">新用户注册</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/views/login_regist/forget_password.jsp">忘记密码</a>
					</li>
				</ul>
			</div>
			<!-- //checkbox -->
			<input type="submit" value="登录">
		</form>
	</div>
	<!-- //content -->

<div class="footer">
		<p></p>
	</div>
	<!-- Jquery -->
	<script src="${pageContext.request.contextPath}/static/03/js/jquery-3.3.1.min.js"></script>
	<!-- //Jquery -->

	<!-- effect js -->
	<script src="${pageContext.request.contextPath}/static/03js/canva_moving_effect.js"></script>
	<!-- //effect js -->

</body>

</html>