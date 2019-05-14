<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>修改密码</title>
<link href="${pageContext.request.contextPath}/static/03/css/style_password.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="App Loction Form,Login Forms,Sign up Forms,Registration Forms,News latter Forms,Elements"./>


<!--webfonts-->
<link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<!--//webfonts-->
<!-- Javascript -->
<script src="${pageContext.request.contextPath}/static/03/assets/js/jquery-1.11.1.min.js"></script>
<script src="${pageContext.request.contextPath}/static/03/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/static/03/assets/js/jquery.backstretch.min.js"></script>
<script src="${pageContext.request.contextPath}/static/03/assets/js/scripts.js"></script>
<script src="${pageContext.request.contextPath}/static/03/js/jquery.validate.js"></script>

	<script type="text/javascript">
	addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

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
		$("#getCheckNumber").click(function(){
			var value = $("#userTelno").val();
			sendemail();
			 $.ajax({
				url:"/playgroundRoutePlanning/AliCheckNumberServlet",
				cache:false,
				data:"userTelno="+value,
				success:function(result){
					$("#reallyCheckNumber").val(result);
				}
			}); 
		});
	})


</script>
</head>
<body>
	<h1>松果服务</h1>
		<div class="app-location">
			<h2>修改密码</h2>
			<div class="line"><span></span></div>
			<div class="location"><img src="${pageContext.request.contextPath}/static/03/img/location.png" class="img-responsive" alt="" /></div>
			<form action="${pageContext.request.contextPath}/DoChangePassword" method="post"  id="myForm">
				<input type="text" name="userTelno" id="userTelno" class="text" placeholder="注册手机号" >
				<input type="password" id="userPassword" name="userPassword" placeholder="请输入密码" >
				<input type="password" id="againUserPassword"  name="againUserPassword" placeholder="确认密码" >
				<input placeholder="请输入验证码" name="checkNumber" type="text" required="true">
				<input  name="reallyCheckNumber" type="hidden" required="true" id="reallyCheckNumber">
				<cite><input type="button" id="getCheckNumber" class="loginbtn" value="点击获取验证码" />
				</cite>
				<div class="submit"><input type="submit" onclick="myFunction()" value="提交" ></div>
				<div class="clear"></div>
				<div class="new">
					<div class="clear"></div>
				</div>
			</form>
		</div>
	<!--start-copyright-->
   		<div class="copy-right">
		</div>
	<!--//end-copyright-->
	

</body>
</html>